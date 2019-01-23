require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end
  
  get '/square/:number' do
    square = params[:number].to_i ** 2
    square.to_s
  end
  
  get '/say/:number/:phrase' do
    result = []
    params[:number].to_i.times do
      result << params[:phrase]
    end
    result
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    result = []
    result << params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]
    result
  end
end