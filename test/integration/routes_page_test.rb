require 'test_helper'
require 'grape'

class RoutesPageTest < ActiveSupport::IntegrationCase

  setup do
    Capybara.current_driver = Capybara.javascript_driver
  end

  test 'routes page' do
    visit('/route_pages')

    assert has_content?('foobar_index_path')
    assert has_content?('/foobar(.:format)')
    assert has_content?('foobar#index')
    assert has_content?('Grape routes')
    assert has_content?('/fake')
    assert has_content?('{"id"=>{:required=>true, :type=>"String"}}')

  end

end
