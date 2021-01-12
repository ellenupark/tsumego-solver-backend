Rails.application.routes.draw do
  resources :problems

  root 'application#index'
end
