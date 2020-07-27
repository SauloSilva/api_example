Rails.application.routes.draw do
  resources :stores, only: [:index, :create, :update, :destroy], param: :store_id do
    member do
      resources :stock_items, only: [:index, :create, :update, :destroy] do
        member do
          post :increase
          post :decrease
        end
      end
    end
  end

  resources :products, only: [:index, :create, :update, :destroy]
end
