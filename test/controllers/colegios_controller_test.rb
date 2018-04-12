require 'test_helper'

class ColegiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @colegio = colegios(:one)
  end

  test "should get index" do
    get colegios_url
    assert_response :success
  end

  test "should get new" do
    get new_colegio_url
    assert_response :success
  end

  test "should create colegio" do
    assert_difference('Colegio.count') do
      post colegios_url, params: { colegio: { direccion: @colegio.direccion, nombre: @colegio.nombre, pais: @colegio.pais } }
    end

    assert_redirected_to colegio_url(Colegio.last)
  end

  test "should show colegio" do
    get colegio_url(@colegio)
    assert_response :success
  end

  test "should get edit" do
    get edit_colegio_url(@colegio)
    assert_response :success
  end

  test "should update colegio" do
    patch colegio_url(@colegio), params: { colegio: { direccion: @colegio.direccion, nombre: @colegio.nombre, pais: @colegio.pais } }
    assert_redirected_to colegio_url(@colegio)
  end

  test "should destroy colegio" do
    assert_difference('Colegio.count', -1) do
      delete colegio_url(@colegio)
    end

    assert_redirected_to colegios_url
  end
end
