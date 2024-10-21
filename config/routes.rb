Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'notification', to: 'notifications#create'
    end
  end
end
