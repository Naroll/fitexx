Rails.application.routes.draw do
  
  resources :backcalls

  resource :recalls, only: [:new, :create]

  get '/recalls' => 'recalls#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
