require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    # binding.pry
    word = pl.piglatinize(params["user_phrase"])
    "#{word}"
  end

end
