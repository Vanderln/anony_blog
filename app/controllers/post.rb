get '/post/create_post' do
	
	erb :create_post
end 

post '/post/create_post' do
	@author = Author.find(session[:user_id])
	
	@post = Post.new(:title => params[:title], :body => params[:post][:body], :author_id => @author.id)
	
	if @post.save
		redirect to "/post/#{@post.id}"
	else
		p "hi"
  	erb :create_post
  end
end

get '/post/:post_id' do

  @post = Post.find(params[:post_id])
  erb :show_one_post
end



# get 'post/update/:id' do
  
# end

post '/posts/update/:id' do
  @post = Post.update(params[:id], params[:post])
  # p @post.inspect
  erb :private
end



