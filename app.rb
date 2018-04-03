require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    phrase = PigLatinizer.new
    text = params[:user_phrase]
    "#{phrase.piglatinize(text)}"
  end

end
