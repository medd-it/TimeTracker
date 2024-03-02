Rails.application.routes.draw do

  get 'main/index'

  root "main#index"

  match 'about', to: "main#about", via: :get

  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  get 'users/delete'

  get 'projects/index'
  get 'projects/show'
  get 'projects/new'
  get 'projects/edit'
  get 'projects/delete'

  get 'timesheets/index'
  get 'timesheets/show'
  get 'timesheets/new'
  get 'timesheets/edit'
  get 'timesheets/delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
