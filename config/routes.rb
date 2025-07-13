Rails.application.routes.draw do
  # get 'home/index'
  # get '/home' => 'home#index'

  get 'home', to: 'home#index'
end
