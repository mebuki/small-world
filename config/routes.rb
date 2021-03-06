Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  get 'events/search'

  resources :events do
    collection do
      get :language, :culture, :hangout, :others
    end
    resource :likes, only: [:create, :destroy] 
  end

  resources :tweets do
    resources :reviews, only: :create
  end

  resources :users, only: [:show, :edit, :update]

end
