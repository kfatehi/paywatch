require 'sinatra/base'
require 'haml'

module Paywatch
  class Api < Sinatra::Base
    get '/' do
      haml :index
    end

    get '/configure' do
      haml :configure
    end

    post '/projects' do
      require 'pry'; binding.pry
      
    end
  end
end
