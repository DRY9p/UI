require "test_helper"

module Ui
  class LandingControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get :index" do
      get landing_:index_url
      assert_response :success
    end
  end
end
