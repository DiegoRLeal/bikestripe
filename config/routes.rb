Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :products, only: [:index, :show]

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
