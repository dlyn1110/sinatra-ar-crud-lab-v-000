
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/post/new' do
    erb :new
  end

  

  post '/posts' do
    Post.create(name: params[:name], content: params[:content])
    erb :index
  end
end
