require 'test_helper'

class AppThingsControllerTest < ActionController::TestCase
  setup do
    @app_thing = app_things(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_things)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_thing" do
    assert_difference('AppThing.count') do
      post :create, app_thing: { app_id: @app_thing.app_id, thing_id: @app_thing.thing_id }
    end

    assert_redirected_to app_thing_path(assigns(:app_thing))
  end

  test "should show app_thing" do
    get :show, id: @app_thing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_thing
    assert_response :success
  end

  test "should update app_thing" do
    patch :update, id: @app_thing, app_thing: { app_id: @app_thing.app_id, thing_id: @app_thing.thing_id }
    assert_redirected_to app_thing_path(assigns(:app_thing))
  end

  test "should destroy app_thing" do
    assert_difference('AppThing.count', -1) do
      delete :destroy, id: @app_thing
    end

    assert_redirected_to app_things_path
  end
end
