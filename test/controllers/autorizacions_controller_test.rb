require 'test_helper'

class AutorizacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autorizacion = autorizacions(:one)
  end

  test "should get index" do
    get autorizacions_url
    assert_response :success
  end

  test "should get new" do
    get new_autorizacion_url
    assert_response :success
  end

  test "should create autorizacion" do
    assert_difference('Autorizacion.count') do
      post autorizacions_url, params: { autorizacion: { alumno_id: @autorizacion.alumno_id, codigo: @autorizacion.codigo, colegio_id: @autorizacion.colegio_id } }
    end

    assert_redirected_to autorizacion_url(Autorizacion.last)
  end

  test "should show autorizacion" do
    get autorizacion_url(@autorizacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_autorizacion_url(@autorizacion)
    assert_response :success
  end

  test "should update autorizacion" do
    patch autorizacion_url(@autorizacion), params: { autorizacion: { alumno_id: @autorizacion.alumno_id, codigo: @autorizacion.codigo, colegio_id: @autorizacion.colegio_id } }
    assert_redirected_to autorizacion_url(@autorizacion)
  end

  test "should destroy autorizacion" do
    assert_difference('Autorizacion.count', -1) do
      delete autorizacion_url(@autorizacion)
    end

    assert_redirected_to autorizacions_url
  end
end
