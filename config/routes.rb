Rails.application.routes.draw do
  resources :events do
    resources :guests, :budgets, :itineraries, :gift_registries, :notifications
  end
end
