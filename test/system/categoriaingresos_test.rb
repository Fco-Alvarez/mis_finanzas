require "application_system_test_case"

class CategoriaingresosTest < ApplicationSystemTestCase
  setup do
    @categoriaingreso = categoriaingresos(:one)
  end

  test "visiting the index" do
    visit categoriaingresos_url
    assert_selector "h1", text: "Categoriaingresos"
  end

  test "should create categoriaingreso" do
    visit categoriaingresos_url
    click_on "New categoriaingreso"

    fill_in "Categoria", with: @categoriaingreso.categoria
    click_on "Create Categoriaingreso"

    assert_text "Categoriaingreso was successfully created"
    click_on "Back"
  end

  test "should update Categoriaingreso" do
    visit categoriaingreso_url(@categoriaingreso)
    click_on "Edit this categoriaingreso", match: :first

    fill_in "Categoria", with: @categoriaingreso.categoria
    click_on "Update Categoriaingreso"

    assert_text "Categoriaingreso was successfully updated"
    click_on "Back"
  end

  test "should destroy Categoriaingreso" do
    visit categoriaingreso_url(@categoriaingreso)
    click_on "Destroy this categoriaingreso", match: :first

    assert_text "Categoriaingreso was successfully destroyed"
  end
end
