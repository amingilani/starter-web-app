# frozen_string_literal: true
Rails.application.routes.draw do
  get 'dashboard' => 'dashboard#show'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    unlock: 'users/unlock',
    confirmations: 'users/confirmations'
  }
  root 'public_pages#home'
end
