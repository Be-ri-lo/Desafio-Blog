Rails.application.routes.draw do
  get 'posts/dashboard'
  get 'posts/create'
  get 'posts/index'

  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
