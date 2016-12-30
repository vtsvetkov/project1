Rails.application.routes.draw do
  resources :idds
  # Thinking will not need this for now since all IDDs will be associated to a project.
  resources :projects do
    resources :idds
  end

  root "projects#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
