HelpDesk::Application.routes.draw do

  root to: "tickets#index"

  resources :tickets

  namespace :api do
    resources :tickets, only: [ :create ]
  end
end
