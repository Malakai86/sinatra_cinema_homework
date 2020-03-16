require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/cinema.rb')
also_reload('./models/*')

get '/films**' do
  erb(:home)
end

get '/codfather' do
  erb(:codfather)
end
