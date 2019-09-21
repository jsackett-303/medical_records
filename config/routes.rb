Rails.application.routes.draw do
  resources :treatments
  resources :medications
  resources :diagnoses
  resources :providers
  resources :patients do
    resources :treatments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
