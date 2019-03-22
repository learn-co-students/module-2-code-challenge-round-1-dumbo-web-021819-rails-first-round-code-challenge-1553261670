Rails.application.routes.draw do

  get '/', to: 'application#landing'
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create]
end
