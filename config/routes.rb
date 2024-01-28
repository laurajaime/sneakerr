Rails.application.routes.draw do
  resources :sneakers

  resources :cart, only: :show
  scope 'cart/:sneaker_id' do
    post 'add', to: 'line_item#update', as: :add_to_cart
    delete 'remove', to: 'line_item#destroy', as: :remove_to_cart
  end
  # Defines the root path route ("/")
  root "sneakers#index"
end
