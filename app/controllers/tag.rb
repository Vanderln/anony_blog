get '/tag/create_tag' do
	
	erb :create_post
end 

tag '/tag/create_tag' do
	@author = Author.find(session[:user_id])
	
	@tag = Tag.new(:title => params[:title], :author_id => @author.id)
	
	if @tag.save
		redirect to "/tag/#{@tag.id}"
	else
		p "hi"
  	erb :create_post
  end
end

get '/tag/:post_id' do

  @tag = tag.find(params[:post_id])
  erb :show_one_post
end



# get 'tag/update/:id' do
  
# end

tag '/posts/update/:id' do
  @tag = tag.update(params[:id], params[:tag])
  # p @tag.inspect
  erb :private
end