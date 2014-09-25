Rails.application.routes.draw do

  root 'main#index'
  resources :menus

  get '/search' => 'menus#search'
  

end
