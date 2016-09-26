require 'test_helper'

class GeneralPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get benefits" do
    get :benefits
    assert_response :success
  end

  test "should get jobs" do
    get :jobs
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get partners" do
    get :partners
    assert_response :success
  end

end
