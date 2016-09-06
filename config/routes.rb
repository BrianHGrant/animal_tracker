Rails.application.routes.draw do
  resources :animals do
    resources :sightings
  end
  resources :regions do
    resources :sightings
  end
end
