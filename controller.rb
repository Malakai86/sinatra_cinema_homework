require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/cinema.rb')
also_reload('./models/*')

get '/home' do
  erb(:home)
end
