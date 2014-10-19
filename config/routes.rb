Rails.application.routes.draw do
  root to: 'landing#index'

  namespace :game, path: 'cli' do
    root action: :index
    get :state
    post ':verb/:entity(/:other_entity)', action: :handle, as: :action
  end
end
