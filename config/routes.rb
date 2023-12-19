Rails.application.routes.draw do
  # root to: 'homes#top'
  
  devise_for :customers, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }
  
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
  }
  
  namespace :admin do
    resources :customers, :homes, :items, :orders
  end
  
  namespace :public do
    resources :cart_items, :customers, :homes, :items, :order_items, :orders
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
