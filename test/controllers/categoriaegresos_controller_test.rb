require "test_helper"

class CategoriaegresosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categoriaegreso = categoriaegresos(:one)
  end

  test "should get index" do
    get categoriaegresos_url
    assert_response :success
  end

  test "should get new" do
    get new_categoriaegreso_url
    assert_response :success
  end

  test "should create categoriaegreso" do
    assert_difference("Categoriaegreso.count") do
      post categoriaegresos_url, params: { categoriaegreso: { categoria: @categoriaegreso.categoria, icono: @categoriaegreso.icono } }
    end

    assert_redirected_to categoriaegreso_url(Categoriaegreso.last)
  end

  test "should show categoriaegreso" do
    get categoriaegreso_url(@categoriaegreso)
    assert_response :success
  end

  test "should get edit" do
    get edit_categoriaegreso_url(@categoriaegreso)
    assert_response :success
  end

  test "should update categoriaegreso" do
    patch categoriaegreso_url(@categoriaegreso), params: { categoriaegreso: { categoria: @categoriaegreso.categoria, icono: @categoriaegreso.icono } }
    assert_redirected_to categoriaegreso_url(@categoriaegreso)
  end

  test "should destroy categoriaegreso" do
    assert_difference("Categoriaegreso.count", -1) do
      delete categoriaegreso_url(@categoriaegreso)
    end

    assert_redirected_to categoriaegresos_url
  end
end
