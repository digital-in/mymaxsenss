require 'test_helper'

class CreneausControllerTest < ActionDispatch::IntegrationTest
  setup do
    @creneau = creneaus(:one)
  end

  test "should get index" do
    get creneaus_url
    assert_response :success
  end

  test "should get new" do
    get new_creneau_url
    assert_response :success
  end

  test "should create creneau" do
    assert_difference('Creneau.count') do
      post creneaus_url, params: { creneau: { archive: @creneau.archive, heuredebut: @creneau.heuredebut, heurefin: @creneau.heurefin, numjour: @creneau.numjour, txtjour: @creneau.txtjour } }
    end

    assert_redirected_to creneau_url(Creneau.last)
  end

  test "should show creneau" do
    get creneau_url(@creneau)
    assert_response :success
  end

  test "should get edit" do
    get edit_creneau_url(@creneau)
    assert_response :success
  end

  test "should update creneau" do
    patch creneau_url(@creneau), params: { creneau: { archive: @creneau.archive, heuredebut: @creneau.heuredebut, heurefin: @creneau.heurefin, numjour: @creneau.numjour, txtjour: @creneau.txtjour } }
    assert_redirected_to creneau_url(@creneau)
  end

  test "should destroy creneau" do
    assert_difference('Creneau.count', -1) do
      delete creneau_url(@creneau)
    end

    assert_redirected_to creneaus_url
  end
end
