require "test_helper"

class SpotifySongsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get spotify_songs_search_url
    assert_response :success
  end

  test "should get create" do
    get spotify_songs_create_url
    assert_response :success
  end
end
