Rails.application.routes.draw do
  resources :session, only: [:new, :create, :destroy]
  resources :gossip
  root to: 'static#index'
  get '/contact', to: 'static#contact'
  get '/team', to: 'static#team'
  get '/welcome/:first_name', to: 'welcome#landing'
  get '/user/:id_user', to: 'profile#show'
  get 'city/:id', to: 'city#show'
end
