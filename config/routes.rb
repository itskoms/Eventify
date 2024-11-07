Rails.application.routes.draw do
  get "guest_lists/index"
  get "guest_lists/update_attendance"
  get "guest_lists/destroy"
  devise_for :users
  # config/routes.rb
  resources :events do
    resources :guests, :budgets, :itineraries, :gift_registries, :notifications
  end
end