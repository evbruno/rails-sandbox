Rails.application.routes.draw do

	get '/echo(/:what)', to: 'accounts#echo'  
  get '/accounts', to: 'accounts#index'
  post '/accounts', to: 'accounts#create'

end
