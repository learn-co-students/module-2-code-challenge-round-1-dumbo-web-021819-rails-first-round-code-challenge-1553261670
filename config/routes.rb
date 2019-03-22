Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create]
  get '/', to: 'application#home', as: 'home_page'
end
