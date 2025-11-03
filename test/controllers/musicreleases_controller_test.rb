require "test_helper"

class MusicreleasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musicrelease = musicreleases(:one)
  end

  test "should get index" do
    get musicreleases_url
    assert_response :success
  end

  test "should get new" do
    get new_musicrelease_url
    assert_response :success
  end

  test "should create musicrelease" do
    assert_difference("Musicrelease.count") do
      post musicreleases_url, params: { musicrelease: { category: @musicrelease.category, content: @musicrelease.content, pic: @musicrelease.pic, title: @musicrelease.title } }
    end

    assert_redirected_to musicrelease_url(Musicrelease.last)
  end

  test "should show musicrelease" do
    get musicrelease_url(@musicrelease)
    assert_response :success
  end

  test "should get edit" do
    get edit_musicrelease_url(@musicrelease)
    assert_response :success
  end

  test "should update musicrelease" do
    patch musicrelease_url(@musicrelease), params: { musicrelease: { category: @musicrelease.category, content: @musicrelease.content, pic: @musicrelease.pic, title: @musicrelease.title } }
    assert_redirected_to musicrelease_url(@musicrelease)
  end

  test "should destroy musicrelease" do
    assert_difference("Musicrelease.count", -1) do
      delete musicrelease_url(@musicrelease)
    end

    assert_redirected_to musicreleases_url
  end
end
