require 'test_helper'

module RoutesPage
  class RoutesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get routes_index_url
      assert_response :success
    end

  end
end
