require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    # binding.pry
    new_instance = PigLatinizer.new
    @piglatinized_sentence = new_instance.piglatinize(params[:user_phrase])

    erb :piglatinize
  end
end
