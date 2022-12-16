require "test_helper"

class CauthusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cauthu = cauthus(:one)
  end

  test "should get index" do
    get cauthus_url
    assert_response :success
  end

  test "should get new" do
    get new_cauthu_url
    assert_response :success
  end

  test "should create cauthu" do
    assert_difference("Cauthu.count") do
      post cauthus_url, params: { cauthu: { age: @cauthu.age, club: @cauthu.club, name: @cauthu.name } }
    end

    assert_redirected_to cauthu_url(Cauthu.last)
  end

  test "should show cauthu" do
    get cauthu_url(@cauthu)
    assert_response :success
  end

  test "should get edit" do
    get edit_cauthu_url(@cauthu)
    assert_response :success
  end

  test "should update cauthu" do
    patch cauthu_url(@cauthu), params: { cauthu: { age: @cauthu.age, club: @cauthu.club, name: @cauthu.name } }
    assert_redirected_to cauthu_url(@cauthu)
  end

  test "should destroy cauthu" do
    assert_difference("Cauthu.count", -1) do
      delete cauthu_url(@cauthu)
    end

    assert_redirected_to cauthus_url
  end
end
