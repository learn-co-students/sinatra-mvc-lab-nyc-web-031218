require_relative 'config/environment'

class App < Sinatra::Base
  #
  # get "/user_input" do
  #   erb :user_input
  # end

  get "/" do
    erb :user_input
  end



  post "/piglatinize" do
    @pig = PigLatinizer.new
    @string = params[:user_phrase]
    # binding.pry
    erb :piglatinize
  end
end
