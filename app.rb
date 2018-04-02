require_relative 'config/environment'
require_relative 'models/piglatinize.rb'

class App < Sinatra::Base

  get '/' do
    erb :input
  end

  post '/' do
    erb :results
  end

end
