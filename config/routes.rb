Rails.application.routes.draw do
  devise_for :user,
  controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
