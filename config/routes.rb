Rails.application.routes.draw do
  resources :larderdbs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#show"
  resources :larderdbs
end
