require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'views'
  end

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @result = Piglatinizer.new.update(params[:input])
    erb :piglatinize
  end
end
