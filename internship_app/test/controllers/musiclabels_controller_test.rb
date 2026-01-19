require "test_helper"

class MusiclabelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musiclabel = musiclabels(:one)
  end

  test "should get index" do
    get musiclabels_url
    assert_response :success
  end

  test "should get new" do
    get new_musiclabel_url
    assert_response :success
  end

  test "should create musiclabel" do
    assert_difference("Musiclabel.count") do
      post musiclabels_url, params: { musiclabel: { email: @musiclabel.email, name: @musiclabel.name, year: @musiclabel.year } }
    end

    assert_redirected_to musiclabel_url(Musiclabel.last)
  end

  test "should show musiclabel" do
    get musiclabel_url(@musiclabel)
    assert_response :success
  end

  test "should get edit" do
    get edit_musiclabel_url(@musiclabel)
    assert_response :success
  end

  test "should update musiclabel" do
    patch musiclabel_url(@musiclabel), params: { musiclabel: { email: @musiclabel.email, name: @musiclabel.name, year: @musiclabel.year } }
    assert_redirected_to musiclabel_url(@musiclabel)
  end

  test "should destroy musiclabel" do
    assert_difference("Musiclabel.count", -1) do
      delete musiclabel_url(@musiclabel)
    end

    assert_redirected_to musiclabels_url
  end
end
