Rails.application.routes.draw do
  resources :patient_diagnoses
  resources :visits
  resources :treatments
  resources :medications
  resources :diagnoses
  resources :providers
  resources :patients do
    resources :treatments
    resources :visits
    resources :patient_diagnoses, path: :diagnoses
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
