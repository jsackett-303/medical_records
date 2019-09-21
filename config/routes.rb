Rails.application.routes.draw do
  resources :visits
  resources :treatments
  resources :medications
  resources :diagnoses
  resources :providers
  resources :patients do
    resources :treatments
    resources :visits
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
