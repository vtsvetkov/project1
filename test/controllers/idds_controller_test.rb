require 'test_helper'

class IddsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idd = idds(:one)
  end

  test "should get index" do
    get idds_url
    assert_response :success
  end

  test "should get new" do
    get new_idd_url
    assert_response :success
  end

  test "should create idd" do
    assert_difference('Idd.count') do
      post idds_url, params: { idd: { destination_system: @idd.destination_system, integration_id: @idd.integration_id, integration_name: @idd.integration_name, integration_type: @idd.integration_type, originating_system: @idd.originating_system, project_id: @idd.project_id } }
    end

    assert_redirected_to idd_url(Idd.last)
  end

  test "should show idd" do
    get idd_url(@idd)
    assert_response :success
  end

  test "should get edit" do
    get edit_idd_url(@idd)
    assert_response :success
  end

  test "should update idd" do
    patch idd_url(@idd), params: { idd: { destination_system: @idd.destination_system, integration_id: @idd.integration_id, integration_name: @idd.integration_name, integration_type: @idd.integration_type, originating_system: @idd.originating_system, project_id: @idd.project_id } }
    assert_redirected_to idd_url(@idd)
  end

  test "should destroy idd" do
    assert_difference('Idd.count', -1) do
      delete idd_url(@idd)
    end

    assert_redirected_to idds_url
  end
end
