Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#index"

  get 'products/about'
  get 'products/contact'
  get 'products/faq'
  
  resources :products, only: [:index, :show] do
    member do
      post :add_to_cart
    end
  end
end
