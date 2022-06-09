Rails.application.routes.draw do
  # mount_devise_token_auth_for 'User', at: 'auth'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, default: {format: :json} do
    mount_devise_token_auth_for 'User', at: 'auth'
    resources :referrals, only: [:index]
    get '/referred_by', to: 'referrals#referred_by'
  end
end
