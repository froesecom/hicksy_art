Rails.application.routes.draw do
  namespace :admin do
    resources :paintings

    root to: "paintings#index"
  end

  root to: "static#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
