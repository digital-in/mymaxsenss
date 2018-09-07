require 'test_helper'

class LieusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lieu = lieus(:one)
  end

  test "should get index" do
    get lieus_url
    assert_response :success
  end

  test "should get new" do
    get new_lieu_url
    assert_response :success
  end

  test "should create lieu" do
    assert_difference('Lieu.count') do
      post lieus_url, params: { lieu: { adresse: @lieu.adresse, archive: @lieu.archive, codepostal: @lieu.codepostal, nom: @lieu.nom, ville: @lieu.ville } }
    end

    assert_redirected_to lieu_url(Lieu.last)
  end

  test "should show lieu" do
    get lieu_url(@lieu)
    assert_response :success
  end

  test "should get edit" do
    get edit_lieu_url(@lieu)
    assert_response :success
  end

  test "should update lieu" do
    patch lieu_url(@lieu), params: { lieu: { adresse: @lieu.adresse, archive: @lieu.archive, codepostal: @lieu.codepostal, nom: @lieu.nom, ville: @lieu.ville } }
    assert_redirected_to lieu_url(@lieu)
  end

  test "should destroy lieu" do
    assert_difference('Lieu.count', -1) do
      delete lieu_url(@lieu)
    end

    assert_redirected_to lieus_url
  end
end
