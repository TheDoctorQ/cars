require "test_helper"

class HybridsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hybrid = hybrids(:one)
  end

  test "should get index" do
    get hybrids_url
    assert_response :success
  end

  test "should get new" do
    get new_hybrid_url
    assert_response :success
  end

  test "should create hybrid" do
    assert_difference("Hybrid.count") do
      post hybrids_url, params: { hybrid: { color: @hybrid.color, name: @hybrid.name } }
    end

    assert_redirected_to hybrid_url(Hybrid.last)
  end

  test "should show hybrid" do
    get hybrid_url(@hybrid)
    assert_response :success
  end

  test "should get edit" do
    get edit_hybrid_url(@hybrid)
    assert_response :success
  end

  test "should update hybrid" do
    patch hybrid_url(@hybrid), params: { hybrid: { color: @hybrid.color, name: @hybrid.name } }
    assert_redirected_to hybrid_url(@hybrid)
  end

  test "should destroy hybrid" do
    assert_difference("Hybrid.count", -1) do
      delete hybrid_url(@hybrid)
    end

    assert_redirected_to hybrids_url
  end
end
