Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/', to: 'accueille#index'
    get '/club', to: 'accueille#club'
    get '/user/new', to: 'user#new'    
    get '/user/deco', to: 'user#deco'
    get '/user/:id', to: 'user#index'          
    post '/user/create', to: 'user#create'       
    post '/user/verif', to: 'user#verif'
end
