Rails.application.routes.draw do
  resources :streets
  resources :cities
  get '/api/', to: 'api#api'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
