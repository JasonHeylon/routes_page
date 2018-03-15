require "routes_page/engine"

module RoutesPage
  require 'action_dispatch/routing/inspector'
  RAILS_ROUTE_INSPECTOR = ActionDispatch::Routing::RoutesInspector.new([])

  def self.format_routes(routes = all_routes)
    {
      rails_routes: RAILS_ROUTE_INSPECTOR.send :collect_routes, routes,
      grape_routes: format_grape_routes(find_grape_routes(routes))
    }
  end

  def self.format_grape_routes(grape_routes)
    return [] if grape_routes.empty?

    grape_routes_formated = []
    grape_routes.each do |grape_route|
      grape_routes_formated += grape_route.routes.collect do |gr|
        {
          namespace: gr.namespace,
          verb: gr.options[:method],
          path: gr.pattern.path,
          params: gr.params,
          version: gr.version
        }
      end
    end
    grape_routes_formated
  end

  def self.find_grape_routes(routes)
    route_wrappers = routes.collect { |route| ActionDispatch::Routing::RouteWrapper.new(route) }
    # grape rails route in array
    routes_with_grape = route_wrappers.select {|r| (r.app.app.superclass rescue nil).to_s == 'Grape::API' }
    return [] if routes_with_grape.empty?

    routes_with_grape.collect { |r| r.app.app }
  end

  def self.all_routes
    Rails.application.reload_routes!
    Rails.application.routes.routes
  end
end
