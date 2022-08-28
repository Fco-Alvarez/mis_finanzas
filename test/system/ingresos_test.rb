require "application_system_test_case"

class IngresosTest < ApplicationSystemTestCase
  setup do
    @ingreso = ingresos(:one)
  end

  test "visiting the index" do
    visit ingresos_url
    assert_selector "h1", text: "Ingresos"
  end

  test "should create ingreso" do
    visit ingresos_url
    click_on "New ingreso"

    fill_in "Categoriaingreso", with: @ingreso.categoriaingreso_id
    fill_in "Fecha", with: @ingreso.fecha
    fill_in "Glosa", with: @ingreso.glosa
    fill_in "Monto", with: @ingreso.monto
    click_on "Create Ingreso"

    assert_text "Ingreso was successfully created"
    click_on "Back"
  end

  test "should update Ingreso" do
    visit ingreso_url(@ingreso)
    click_on "Edit this ingreso", match: :first

    fill_in "Categoriaingreso", with: @ingreso.categoriaingreso_id
    fill_in "Fecha", with: @ingreso.fecha
    fill_in "Glosa", with: @ingreso.glosa
    fill_in "Monto", with: @ingreso.monto
    click_on "Update Ingreso"

    assert_text "Ingreso was successfully updated"
    click_on "Back"
  end

  test "should destroy Ingreso" do
    visit ingreso_url(@ingreso)
    click_on "Destroy this ingreso", match: :first

    assert_text "Ingreso was successfully destroyed"
  end
end
