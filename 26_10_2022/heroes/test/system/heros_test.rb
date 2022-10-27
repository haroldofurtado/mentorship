require "application_system_test_case"

class HerosTest < ApplicationSystemTestCase
  setup do
    @hero = heros(:one)
  end

  test "visiting the index" do
    visit heros_url
    assert_selector "h1", text: "Heros"
  end

  test "should create hero" do
    visit heros_url
    click_on "New hero"

    fill_in "Attack type", with: @hero.attack_type
    fill_in "Name", with: @hero.name
    fill_in "Primary attribute", with: @hero.primary_attribute
    fill_in "Remote image", with: @hero.remote_image
    fill_in "Roles", with: @hero.roles
    click_on "Create Hero"

    assert_text "Hero was successfully created"
    click_on "Back"
  end

  test "should update Hero" do
    visit hero_url(@hero)
    click_on "Edit this hero", match: :first

    fill_in "Attack type", with: @hero.attack_type
    fill_in "Name", with: @hero.name
    fill_in "Primary attribute", with: @hero.primary_attribute
    fill_in "Remote image", with: @hero.remote_image
    fill_in "Roles", with: @hero.roles
    click_on "Update Hero"

    assert_text "Hero was successfully updated"
    click_on "Back"
  end

  test "should destroy Hero" do
    visit hero_url(@hero)
    click_on "Destroy this hero", match: :first

    assert_text "Hero was successfully destroyed"
  end
end
