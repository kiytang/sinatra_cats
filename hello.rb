require 'sinatra'

get '/' do
  @name = %w(Amigo Oscar Viking).sample
  erb :index
end

get '/secret' do
  'This is a secret'
end

get '/hello' do
  @name = %w(Amigo Oscar Viking).sample
  @visitor = params[:name]
  erb :index
end

get '/berry' do
	erb :berry
end