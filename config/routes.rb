Rails.application.routes.draw do
  root to: 'cattles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cattles do
    collection do
      get 'double'
    end
  end
end
