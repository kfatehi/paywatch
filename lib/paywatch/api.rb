require 'sinatra/base'
require 'haml'
require 'json'

module Paywatch
  class Api < Sinatra::Base
    get '/' do
      haml :index
    end

    get '/configure' do
      haml :configure
    end

    post '/projects' do
      content_type :json
      @project = Project.create params[:project]
      @project.to_json
    end
  end
end
