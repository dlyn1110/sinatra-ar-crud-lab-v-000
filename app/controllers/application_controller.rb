
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

#-----Create
#   get '/posts/new' do
#     erb :new
#   end
#
#   post '/posts' do #<--creates a post --
#     @post = Post.create(name: params[:name], content: params[:content])
#     redirect to '/posts'
#   end
#   #----Read
#   get '/posts' do
#     @posts = Post.all
#     erb :index
#   end
#
#   get '/posts/:id' do
#     @post = Post.find(params[:id])
#     erb :show
#   end
#
#   #---Update
#   get '/posts/:id/edit' do
#     @post = Post.find(params[:id])
#     erb :edit
#   end
#
#   patch '/posts/:id' do
#     @post = Post.find(params[:id])
#     @post = Post.update(name: params[:name], content: params[:content])
#     erb :show
#   end
#
# #-----------DELETE
#   delete '/posts/:id/delete' do
#     @post = Post.find(params[:id])
#     @post.destroy
#     erb :delete
#   end
# end


# get '/posts/new' do
#     erb :new
#   end
#
#   post '/posts' do
#     Post.create(name: params[:name], content: params[:content])
#     erb :index
#   end
#
#   get '/posts' do
#     @posts = Post.all
#     erb :index
#   end
#
#   get '/posts/:id' do
#     @post = Post.find_by id: params[:id]
#     erb :show
#   end
#
#   get '/posts/:id/edit' do
#     @post = Post.find_by id: params[:id]
#
#     erb :edit
#   end
#
#   patch '/posts/:id' do
#     @post = Post.find_by id: params[:id]
#     @post.update(name: params[:name], content: params[:content])
#     @post.save
#     erb :show
#   end
#
#   delete '/posts/:id/delete' do
#     @post = Post.find_by id: params[:id]
#     @post.delete
#     erb :delete
#   end
# end


get '/posts/new' do
   erb :new
 end

 get '/posts' do #loads index page
   @posts = Post.all
   erb :index
 end

 post '/posts' do  #creates a post
   @post = Post.create(params)
   # redirect to '/posts'
   erb :index
 end

 get '/posts/:id' do
   @post = Post.find_by_id(params[:id])
   erb :show
 end

 get '/posts/:id/edit' do
   @post = Post.find_by_id(params[:id])
   erb :edit
 end

 patch '/posts/:id' do
   @post = Post.find_by_id(params[:id])
   @post.name = params[:name]
   @post.content= params[:content]
   @post.save
   erb :show
 end

 delete '/posts/:id/delete' do
   @post = Post.find_by_id(params[:id])
   @post.delete
   # redirect to '/posts'
   erb :deleted
 end


end
