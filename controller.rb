require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/film.rb')
also_reload('./models/*')

get '/films**' do
  @film = Film.all()
  @title = @film.map{|film|film.title}
  erb(:index)
end
