Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
    get "sign_in", :to => "devise/sessions#new"
    get "login", :to => "devise/sessions#new"
    get "register", :to => "devise/registrations#new"
    get "logout", :to => "devise/sessions#destroy"
    get "profile", :to => "devise/registrations#edit"
  end
  # root to: "home#index"
  resources :history_balls
  resources :double_balls
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
