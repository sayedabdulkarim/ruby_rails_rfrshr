Rails.application.routes.draw do
  get "pages/about_us"
  get "pages/contact_us"
  get "pages/privacy_policy"
  # get "pages/terms_and_conditions"
  get "/pages/terms" => "pages#terms_and_conditions"
  # get 'home/index'
  # get '/home' => 'home#index'

  # get 'home', to: 'home#index'

  root 'home#index' # this 'root' sets the / URL

end
