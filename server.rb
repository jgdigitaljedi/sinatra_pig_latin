require 'rubygems'
require 'sinatra'
# require 'pry-byebug'
require 'pig_latin'

set :bind, '0.0.0.0' # This is needed for Vagrant

get '/' do
  erb :index
end

post '/' do
	@word = params[:word]
	@result = PigLatin::convert(@word)
	erb :index
end
