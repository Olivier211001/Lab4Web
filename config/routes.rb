#Olivier Lafleur 20 octobre 2021
Rails.application.routes.draw do
  devise_for :users
  #devise_for :installs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #Lab3 et 4
   root to: 'public#home'
   get '/recettes/:id', to: 'public#recipe'
   get '/admin/recettes', to: 'admin/secret#home'
   get '/admin/recettes/:id', to: 'admin/secret#recipe'
   get '/mesrecettes', to: 'private#home'
   get '/mesrecettes/:id', to: 'private#recipe'
end
