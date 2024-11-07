Rails.application.routes.draw do
  resources :events do
    resources :guest_lists
    resources :budgets
    resources :itineraries
    resources :gift_registries
    resources :notifications 
  end
end