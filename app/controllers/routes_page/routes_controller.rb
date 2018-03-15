require_dependency "routes_page/application_controller"

module RoutesPage
  class RoutesController < ApplicationController
    def index
      @routes = RoutesPage.format_routes
    end
  end
end
