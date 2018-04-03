require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_text = params[:user_phrase]

    @piggy = PigLatinizer.new
    @piggy_phrase = @piggy.piglatinize(@user_text)
    erb :results
  end
end
