Rails.application.routes.draw do

    devise_for :admins, controllers: {
        sessions:      'admins/sessions',
        passwords:     'admins/passwords',
        registrations: 'admins/registrations'
    }

    devise_for :clients, controllers: {
        sessions:      'clients/sessions',
        passwords:     'clients/passwords',
        registrations: 'clients/registrations'
    }

    namespace :client do
        get "clients/top" => "clients#top"
        get "clients/about" => "clients#about"
        get "clients/:client_id/withdrawal_page" => "clients#destroy"
        resources :products, only: [:index, :show]
        resources :clients, only: [:show] do
            resources :cart_products, only: [:create, :update, :destroy, :index]
            delete "cart_products" => "cart_products#destroy_all"
            resources :orders, only: [:new, :create, :index, :show,]
            get "orders/thanks" => "orders#thanks"
            resources :shipping_addresses, only: [:index, :edit, :create, :update, :destroy]
        end
    end

    namespace :admin do
        get "admins/top" => "admins#top"
        resources :products
        resources :genre, only: [:create, :index, :edit, :destroy]
        resources :clients, only: [:index, :show, :edit, :update]
        resources :orders, only: [:update, :index, :show] do
            resources :order_prducts, only: [:update]
        end
    end

end
