require "application_system_test_case"

class MusicreleasesTest < ApplicationSystemTestCase
  setup do
    @musicrelease = musicreleases(:one)
  end

  test "visiting the index" do
    visit musicreleases_url
    assert_selector "h1", text: "Musicreleases"
  end

  test "should create musicrelease" do
    visit musicreleases_url
    click_on "New musicrelease"

    fill_in "Category", with: @musicrelease.category
    fill_in "Content", with: @musicrelease.content
    fill_in "Pic", with: @musicrelease.pic
    fill_in "Title", with: @musicrelease.title
    click_on "Create Musicrelease"

    assert_text "Musicrelease was successfully created"
    click_on "Back"
  end

  test "should update Musicrelease" do
    visit musicrelease_url(@musicrelease)
    click_on "Edit this musicrelease", match: :first

    fill_in "Category", with: @musicrelease.category
    fill_in "Content", with: @musicrelease.content
    fill_in "Pic", with: @musicrelease.pic
    fill_in "Title", with: @musicrelease.title
    click_on "Update Musicrelease"

    assert_text "Musicrelease was successfully updated"
    click_on "Back"
  end

  test "should destroy Musicrelease" do
    visit musicrelease_url(@musicrelease)
    click_on "Destroy this musicrelease", match: :first

    assert_text "Musicrelease was successfully destroyed"
  end
end
