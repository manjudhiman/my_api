Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resource :retro_info, controller: 'retro'

  post 'create_retro', to: 'retro#create_retro'
  get 'retro_details', to: 'retro#get_retro_details'

end
