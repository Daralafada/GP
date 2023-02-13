Rails.application.routes.draw do
  get '/home', to: 'static#home'
  get '/contact', to: 'static#contact'
  get '/team', to: 'static#team'
  get '/welcome/:first_name', to: 'welcome#landing'
  get '/gossip/:id_gossip', to: 'gossip#show'
  get '/user/:id_user', to: 'profile#show'
end
