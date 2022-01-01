Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  resources :servicios
  post "create_bloque" => "bloques#create_bloque"
  
  resources :turnos_trabajados do 
    resources :bloques
  end
end
