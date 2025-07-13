Rails.application.routes.draw do
  # get 'home/index'
  # get '/home' => 'home#index'

  # get 'home', to: 'home#index'

  root 'home#index' # this 'root' sets the / URL

end
