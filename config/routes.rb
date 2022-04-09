Rails.application.routes.draw do
  root to: 'dashboards#show'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    get 'users/sign_in', to: 'users/sessions#new', as: :new_user_session
    get 'users/sign_out', to: 'users/sessions#destroy', as: :destroy_user_session
  end
  resources :users do
    resources :events, only: [ :new, :create ]
    resources :calendars
    #attention, il faut que seul le user puisse accèder à la vue de son agenda
  end
end
