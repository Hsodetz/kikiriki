require 'test_helper'

class ObservacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @observacion = observacions(:one)
  end

  test "should get index" do
    get observacions_url
    assert_response :success
  end

  test "should get new" do
    get new_observacion_url
    assert_response :success
  end

  test "should create observacion" do
    assert_difference('Observacion.count') do
      post observacions_url, params: { observacion: { asunto: @observacion.asunto, mensajes: @observacion.mensajes, padre_id: @observacion.padre_id, profesor_id: @observacion.profesor_id } }
    end

    assert_redirected_to observacion_url(Observacion.last)
  end

  test "should show observacion" do
    get observacion_url(@observacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_observacion_url(@observacion)
    assert_response :success
  end

  test "should update observacion" do
    patch observacion_url(@observacion), params: { observacion: { asunto: @observacion.asunto, mensajes: @observacion.mensajes, padre_id: @observacion.padre_id, profesor_id: @observacion.profesor_id } }
    assert_redirected_to observacion_url(@observacion)
  end

  test "should destroy observacion" do
    assert_difference('Observacion.count', -1) do
      delete observacion_url(@observacion)
    end

    assert_redirected_to observacions_url
  end
end
