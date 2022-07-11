Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  scope module: :public do
    resources :destinations, only: [:new, :index, :show, :edit, :create, :update, :destroy]
    resources :users, only: [:new, :index, :show, :edit, :create, :update, :destroy] do
      collection do
        get "unsbscribe" => "users#unsubscribe"
      end
    end
    get 'home/about' => "homes#about" ,as: "about"
  end

  namespace :admin do
    resources :destinations, only: [:new, :index, :show, :edit, :create, :update, :destroy]
    resources :users, only: [:new, :index, :show, :edit, :create, :update, :destroy] do
      collection do
        get "unsbscribe" => "users#unsubscribe"
      end
    end
  end
end
