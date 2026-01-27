Rails.application.routes.draw do

  resources :products do

  # resources :products, skip: [show]
  # resources :products, only: [new, delete]
    collection do
      get :out_of_stock
    end
  end

  resources :customers do
    collection do
      get :blacklisted_customers
    end
  end

  resources :musiclabels

  get "up" => "rails/health#show", as: :rails_health_check

end
