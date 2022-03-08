Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post  '/booking_payload'         => 'reservations#booking_payload',          as: "booking_payload"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
