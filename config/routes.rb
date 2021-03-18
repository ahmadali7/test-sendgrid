Rails.application.routes.draw do
  resources :phones
  root 'emails#new'
  resources :emails

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
