Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  resources :events, only: [:index, :new, :create, :show, :edit, :update] do
    collection do
      get :language, :culture, :hangout, :others
    end
  end
end
