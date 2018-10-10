Rails.application.routes.draw do
  # get 'welcome/get_project_id'
  get '/search', to: 'searches#show', as: 'search'
  # resource :search, only: [:show]
  root 'welcome#asana'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
