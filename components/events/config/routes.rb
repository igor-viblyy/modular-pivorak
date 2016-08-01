Pivorak::Core::Engine.routes.draw do
  scope module: 'events' do
    resources :events
  end
end
