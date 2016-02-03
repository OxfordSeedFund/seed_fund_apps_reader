Rails.application.routes.draw do
  root to: 'apps#index'
  resources :apps
  resources :members do
    resources :apps
  end
end
