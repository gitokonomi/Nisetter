Rails.application.routes.draw do

  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admins, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  
  scope module: :user do
    root to: "homes#top"
    resources :tweets
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
