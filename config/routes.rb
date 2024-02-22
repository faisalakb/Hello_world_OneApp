# config/routes.rb
Rails.application.routes.draw do
  get '/api/random_greeting', to: 'greetings#index'
  get 'up' => 'rails/health#show', as: :rails_health_check

  root "static#index"
end
