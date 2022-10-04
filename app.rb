require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  # This allows the app code to refresh
  # without having to restart the server.
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    return "Hello World"
  end

  get '/hello' do
    return erb(:index)
  end

  post '/submit' do
    name = params[:name]
    message = params[:message]

    return "Thanks #{name}, you sent this message: \"#{message}\""
  end

  get '/names' do
    names = params[:names]

    return "#{names.split(',').join(', ')}"
  end
  post '/sort-names' do
    names = params[:names]

    return "#{names.split(',').sort.join(', ')}"
  end
end