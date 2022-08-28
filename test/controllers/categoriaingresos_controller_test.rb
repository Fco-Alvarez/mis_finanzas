require "test_helper"

class CategoriaingresosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categoriaingreso = categoriaingresos(:one)
  end

  test "should get index" do
    get categoriaingresos_url
    assert_response :success
  end

  test "should get new" do
    get new_categoriaingreso_url
    assert_response :success
  end

  test "should create categoriaingreso" do
    assert_difference("Categoriaingreso.count") do
      post categoriaingresos_url, params: { categoriaingreso: { categoria: @categoriaingreso.categoria } }
    end

    assert_redirected_to categoriaingreso_url(Categoriaingreso.last)
  end

  test "should show categoriaingreso" do
    get categoriaingreso_url(@categoriaingreso)
    assert_response :success
  end

  test "should get edit" do
    get edit_categoriaingreso_url(@categoriaingreso)
    assert_response :success
  end

  test "should update categoriaingreso" do
    patch categoriaingreso_url(@categoriaingreso), params: { categoriaingreso: { categoria: @categoriaingreso.categoria } }
    assert_redirected_to categoriaingreso_url(@categoriaingreso)
  end

  test "should destroy categoriaingreso" do
    assert_difference("Categoriaingreso.count", -1) do
      delete categoriaingreso_url(@categoriaingreso)
    end

    assert_redirected_to categoriaingresos_url
  end
end
