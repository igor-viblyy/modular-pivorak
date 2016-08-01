Rails.application.routes.draw do
  mount Pivorak::Core::Engine => '/', as: 'pivorak'
end
