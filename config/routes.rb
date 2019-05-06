Rails.application.routes.draw do
  post '/signup', to: 'users#create'
  post '/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end
