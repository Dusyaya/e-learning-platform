Rails.application.routes.draw do
  get 'user_course/register/:id', to: 'user_course#register', as: :user_course_register
  get 'user_course/unregister/:id', to: 'user_course#unregister', as: :user_course_unregister
  get 'courses/my', to: 'courses#show_my', as: :courses_my
  resources :courses

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'home#index'
end
