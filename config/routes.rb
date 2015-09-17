Rails.application.routes.draw do
  match ":controller(/:action(/:id))", :via => [:post, :get, :delete]
  devise_for :users, controllers: {
        registrations: 'users/registrations', 
        sessions: 'users/sessions'
      }
 root "home#index"
 
end
