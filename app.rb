require 'rubygems'
require 'sinatra'
require 'json'
require 'data_mapper'
require "sinatra/cookies"

class Book
  include DataMapper::Resource
  property :id, Serial 
  property :title, String
  property :author, String
  property :cover_url, Text
end

class Quote
  include DataMapper::Resource
  property :id, Serial 
  property :quote, Text
  property :username, String

  belongs_to :book
end

class User
  include DataMapper::Resource
  property :id, Serial 
  property :score, Text
  property :avatar_url, Text
end

DataMapper.finalize
DataMapper::Logger.new($stdout, :debug)

configure do
  DataMapper.setup(:default, (ENV["CLEARDB_DATABASE_URL"] || {
    :adapter  => 'mysql',
    :host     => 'localhost',
    :username => 'root' ,
    :password => '',
    :database => 'gameofquotes'}))
  DataMapper.auto_upgrade!  
end


get '/' do
  score = cookies[:gof_score]
  @s = score
  if score && !score.empty? && score.split(',').size == 11
    redirect "/finish"
  else
    @result = 0
    score.split(',').each { |r| @result += r.to_i } if score && !score.empty?

    @quote = Quote.first(:offset => rand(Quote.all.count-1))
    win = @quote.book
    lose = Book.first(:id.not => win.id, :offset => rand(Quote.all.count-2))

    @choices = [win, lose].shuffle

    erb :quote
  end
end

get '/r' do
  score = cookies[:gof_score]
  if score && !score.empty? && score.split(',').size == 11
    redirect "/finish"
  else
    add_to_score(params[:r])
    redirect "/"
  end
end

get '/finish' do
  erb :finish
  score = cookies[:gof_score]
  if score && !score.empty? && score.split(',').size == 11
    @result = 0
    score.split(',').each { |r| @result += r.to_i }
    erb :finish
  else
    redirect "/"
  end
end

get '/restart' do
  cookies[:gof_score] = nil
  redirect "/"
end

get '/admin/add' do
  @quote_size = Quote.all.count
  @book_size = Book.all.count

  erb :add_quote
end

post '/admin/add' do

  quote = params[:quote]
  title = params[:title]
  author = params[:author]
  cover_url = params[:cover_url]

  if Quote.first(:quote => quote).nil? && !quote.empty? && !title.empty? && !author.empty? && !cover_url.empty?
      book = Book.first_or_create({ :title => title, :author => author})
      book.cover_url = cover_url
      book.save!
      book.reload

      Quote.create!(:book_id => book.id, :quote => quote)
      redirect "/admin/add?s=1"
  else
      redirect "/admin/add?s=0"    
  end

end

get('/static/:filename') { send_file("./static/#{params[:filename]}") }
get('/fonts/:filename') { send_file("./fonts/#{params[:filename]}") }

def add_to_score(result)
  score = cookies[:gof_score]
  score = "#{score},#{result}"
  cookies[:gof_score] = score
end

