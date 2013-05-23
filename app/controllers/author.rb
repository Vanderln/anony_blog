get '/login' do
  erb :login
end


get 'create_author' do
  erb :create_author
end

get '/private/:id' do
  if session[:user_id] == nil
    redirect to "/"
  elsif session[:user_id] != params[:id].to_i
    redirect to "/private/#{session[:user_id]}"
  else
    @author = Author.find(session[:user_id])
    @post = Post.where(session[:user_id]) 
    @tag = Tag.where(session[:user_id])
    erb :private
  end
end


post '/create_author' do
  
  @author = Author.new(name: params[:full_name], email: params[:email], 
                          password: params[:password])
  if @author.save
    session[:user_id] = Author.find_by_email(params[:email]).id
    
    redirect to "/private/#{session[:user_id]}"
  else
    erb :login
  end
end

post '/login' do
  
  params[:email]
  params[:password]
  if Author.authenticate(params[:email], params[:password])
    @author = Author.find_by_email(params[:email])
    session[:user_id] = @author.id
    redirect to "/private/#{@author.id}"
  else
    
   redirect to '/login'
  end
end




