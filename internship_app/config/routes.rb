Rails.application.routes.draw do
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  resources :products do
  
  # resources :products, except: [:show] do
  # resources :products, only: [:new, :destroy] do
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
