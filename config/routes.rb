Rails.application.routes.draw do
  root "users#index"

  resources :users
  resources :questions, except: [:show, :new, :index]
  resource :session, only: [:new, :create, :destroy]

  #переопределили param, чтобы он показывал не id, а text
  resources :hashtags, only: :show, param: :text
end
