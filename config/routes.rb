Rails.application.routes.draw do
  devise_scope :user do
    get 'registration', to: 'users/registrations#new', as: 'new_user_registration'
    post 'registration', to: 'users/registrations#create', as: 'user_registration'
    delete 'logout', to: 'users/sessions#destroy', as: 'destroy_user_session'
    get 'login', to: 'users/sessions#new', as: 'new_user_session'
    post 'login', to: 'users/sessions#create', as: 'user_session'
  end
  # devise_for :users

  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
