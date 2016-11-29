Rails.application.routes.draw do
  
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :bumps do
    resources :donatives, only: [:create,:destroy,:update,:show]
  end

end
