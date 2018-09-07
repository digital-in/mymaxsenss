require "application_system_test_case"

class AffectationsTest < ApplicationSystemTestCase
  setup do
    @affectation = affectations(:one)
  end

  test "visiting the index" do
    visit affectations_url
    assert_selector "h1", text: "Affectations"
  end

  test "creating a Affectation" do
    visit affectations_url
    click_on "New Affectation"

    fill_in "Cabinet", with: @affectation.cabinet_id
    fill_in "Creneau", with: @affectation.creneau_id
    fill_in "Datedebut", with: @affectation.datedebut
    fill_in "Datefin", with: @affectation.datefin
    fill_in "Praticien", with: @affectation.praticien_id
    click_on "Create Affectation"

    assert_text "Affectation was successfully created"
    click_on "Back"
  end

  test "updating a Affectation" do
    visit affectations_url
    click_on "Edit", match: :first

    fill_in "Cabinet", with: @affectation.cabinet_id
    fill_in "Creneau", with: @affectation.creneau_id
    fill_in "Datedebut", with: @affectation.datedebut
    fill_in "Datefin", with: @affectation.datefin
    fill_in "Praticien", with: @affectation.praticien_id
    click_on "Update Affectation"

    assert_text "Affectation was successfully updated"
    click_on "Back"
  end

  test "destroying a Affectation" do
    visit affectations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Affectation was successfully destroyed"
  end
end
