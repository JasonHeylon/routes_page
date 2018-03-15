# RoutesPage::Engine.routes.draw do
#   root to: 'routes#index'
# end
#
#

Rails.application.routes.draw do
  mount RoutesPage::Engine => "rails/routes_page"
  get "rails/routes_page" => "routes_page/routes#index"
end
