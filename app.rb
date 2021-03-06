require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/bookmarks'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello World'
  end

  get '/bookmarks' do 
    @bookmarks = Bookmarks.all
    erb :'bookmarks/index'
  end 

  run! if app_file == $0
end