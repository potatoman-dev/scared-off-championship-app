Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  resources :posts, only:[:index, :show, :new, :create]
  post 'posts/:id/points', to: 'posts#points', as: 'points_post'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
