Rails.application.routes.draw do
  devise_for :users
  root 'fintech#index'
end
