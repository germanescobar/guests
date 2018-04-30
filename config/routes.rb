Rails.application.routes.draw do
  root "guests#index"
  resources :guests do
    patch :going, on: :member
    patch :not_going, on: :member
  end
end
