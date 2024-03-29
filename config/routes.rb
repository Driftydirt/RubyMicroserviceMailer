Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "reminder", to: 'mailer#reminder'
  post "reset_password", to: 'mailer#reset_password'
  post "invite", to: 'mailer#invite'
  post "update", to: 'mailer#update'
  post "delete", to: 'mailer#delete'

end
