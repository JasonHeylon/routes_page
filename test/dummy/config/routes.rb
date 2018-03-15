Rails.application.routes.draw do
  # mount RoutesPage::Engine => "/routes_page"

  mount Dummy::API => '/'
  resources :foobar
end
