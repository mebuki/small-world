Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  resources :events do
    collection do
      get :language, :culture, :hangout, :others
    end
  end
end
