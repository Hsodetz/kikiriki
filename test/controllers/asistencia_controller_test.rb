require 'test_helper'

class AsistenciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asistencium = asistencia(:one)
  end

  test "should get index" do
    get asistencia_url
    assert_response :success
  end

  test "should get new" do
    get new_asistencium_url
    assert_response :success
  end

  test "should create asistencium" do
    assert_difference('Asistencium.count') do
      post asistencia_url, params: { asistencium: { alumno_id: @asistencium.alumno_id, fechaHora: @asistencium.fechaHora, materia_id: @asistencium.materia_id, resultadoAsistencia: @asistencium.resultadoAsistencia } }
    end

    assert_redirected_to asistencium_url(Asistencium.last)
  end

  test "should show asistencium" do
    get asistencium_url(@asistencium)
    assert_response :success
  end

  test "should get edit" do
    get edit_asistencium_url(@asistencium)
    assert_response :success
  end

  test "should update asistencium" do
    patch asistencium_url(@asistencium), params: { asistencium: { alumno_id: @asistencium.alumno_id, fechaHora: @asistencium.fechaHora, materia_id: @asistencium.materia_id, resultadoAsistencia: @asistencium.resultadoAsistencia } }
    assert_redirected_to asistencium_url(@asistencium)
  end

  test "should destroy asistencium" do
    assert_difference('Asistencium.count', -1) do
      delete asistencium_url(@asistencium)
    end

    assert_redirected_to asistencia_url
  end
end
