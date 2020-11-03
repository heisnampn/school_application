Rails.application.routes.draw do
  devise_for :users

  root 'home_page#home'
  
  resources :users do 
    resources :student_ratings, only: %i[new create]
  end

  resources :performance_types, only: :update
end
