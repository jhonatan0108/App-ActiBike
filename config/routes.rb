Rails.application.routes.draw do
  resources :bici_usuarios
  get '/bici_usuarios', to: 'bici_usuarios#index'
    get '/bici_usuarios/new', to: 'bici_usuarios#new'
  post '/bici_usuarios', to: 'bici_usuarios#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
