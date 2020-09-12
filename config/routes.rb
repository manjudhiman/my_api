Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



  post 'create_retro', to: 'retro#create_retro'
  get 'retro_details', to: 'retro#get_retro_details'
  get 'details', to: 'retro#get_all_details'
  delete 'delete', to: 'retro#destroy'

  resource :retro_info, controller: 'retro'


end
