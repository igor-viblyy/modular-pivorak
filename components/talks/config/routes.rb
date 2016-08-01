Pivorak::Core::Engine.routes.draw do
  scope module: 'talks' do
    resources :talks
  end
end
