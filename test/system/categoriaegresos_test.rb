require "application_system_test_case"

class CategoriaegresosTest < ApplicationSystemTestCase
  setup do
    @categoriaegreso = categoriaegresos(:one)
  end

  test "visiting the index" do
    visit categoriaegresos_url
    assert_selector "h1", text: "Categoriaegresos"
  end

  test "should create categoriaegreso" do
    visit categoriaegresos_url
    click_on "New categoriaegreso"

    fill_in "Categoria", with: @categoriaegreso.categoria
    fill_in "Icono", with: @categoriaegreso.icono
    click_on "Create Categoriaegreso"

    assert_text "Categoriaegreso was successfully created"
    click_on "Back"
  end

  test "should update Categoriaegreso" do
    visit categoriaegreso_url(@categoriaegreso)
    click_on "Edit this categoriaegreso", match: :first

    fill_in "Categoria", with: @categoriaegreso.categoria
    fill_in "Icono", with: @categoriaegreso.icono
    click_on "Update Categoriaegreso"

    assert_text "Categoriaegreso was successfully updated"
    click_on "Back"
  end

  test "should destroy Categoriaegreso" do
    visit categoriaegreso_url(@categoriaegreso)
    click_on "Destroy this categoriaegreso", match: :first

    assert_text "Categoriaegreso was successfully destroyed"
  end
end
