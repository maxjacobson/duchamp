# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'reports#index'
  resources :reports, except: [:index]
end
