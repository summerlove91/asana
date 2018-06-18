Rails.application.routes.draw do

  post 'welcome/get_project_id'
  root 'welcome#asana'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
