Rails.application.routes.draw do
  mount Lockup::Engine, at: '/lockup'
  root to: 'apps#index'
  resources :apps
  resources :members do
    resources :apps
  end
end
