Rails.application.routes.draw do
  get 'main/index'

  resource :actualtests

  root 'main#index'
end
