get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/login' do
  if session[:user_id] = nil
    erb :login
  else
    redirect to "/private/#{session[:user_id]}"
  end

end

get '/create' do
  session[:user_id] = nil
  erb :create_author
end





get '/logout' do 
  session[:user_id] = nil
  erb :index
end
