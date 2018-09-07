require "application_system_test_case"

class LieusTest < ApplicationSystemTestCase
  setup do
    @lieu = lieus(:one)
  end

  test "visiting the index" do
    visit lieus_url
    assert_selector "h1", text: "Lieus"
  end

  test "creating a Lieu" do
    visit lieus_url
    click_on "New Lieu"

    fill_in "Adresse", with: @lieu.adresse
    fill_in "Archive", with: @lieu.archive
    fill_in "Codepostal", with: @lieu.codepostal
    fill_in "Nom", with: @lieu.nom
    fill_in "Ville", with: @lieu.ville
    click_on "Create Lieu"

    assert_text "Lieu was successfully created"
    click_on "Back"
  end

  test "updating a Lieu" do
    visit lieus_url
    click_on "Edit", match: :first

    fill_in "Adresse", with: @lieu.adresse
    fill_in "Archive", with: @lieu.archive
    fill_in "Codepostal", with: @lieu.codepostal
    fill_in "Nom", with: @lieu.nom
    fill_in "Ville", with: @lieu.ville
    click_on "Update Lieu"

    assert_text "Lieu was successfully updated"
    click_on "Back"
  end

  test "destroying a Lieu" do
    visit lieus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lieu was successfully destroyed"
  end
end
