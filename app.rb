require 'sinatra'

enable :sessions

get '/' do
	if session[:username]
		@name = session[:username]
	else
		@name = 'Carina'
	end
	erb :index
end

post '/user' do
	@name = params[:username]
	session[:username] = @name
	redirect '/'
end
