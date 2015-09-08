Rails.application.routes.draw do
  match ":controller(/:action(/:id))", :via => [:post, :get]
  devise_for :users, controllers: {
        :omniauth_callbacks => "users/omniauth_callbacks",
        registrations: 'users/registrations'        
      }
 root "home#index"
 
end
