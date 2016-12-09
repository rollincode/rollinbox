Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # USERS & ADMINISTRATION
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # FROALA (WYSIWYG)
  post '/froala_upload' => 'froala#upload'
  post '/froala_manage' => 'froala#manage'
  delete '/froala_delete' => 'froala#delete'

  # HOME / root
  root to: 'site#index'
end
