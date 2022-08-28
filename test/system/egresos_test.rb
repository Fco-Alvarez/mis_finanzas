require "application_system_test_case"

class EgresosTest < ApplicationSystemTestCase
  setup do
    @egreso = egresos(:one)
  end

  test "visiting the index" do
    visit egresos_url
    assert_selector "h1", text: "Egresos"
  end

  test "should create egreso" do
    visit egresos_url
    click_on "New egreso"

    fill_in "Categoriaegreso", with: @egreso.categoriaegreso_id
    fill_in "Fecha", with: @egreso.fecha
    fill_in "Glosa", with: @egreso.glosa
    fill_in "Monto", with: @egreso.monto
    click_on "Create Egreso"

    assert_text "Egreso was successfully created"
    click_on "Back"
  end

  test "should update Egreso" do
    visit egreso_url(@egreso)
    click_on "Edit this egreso", match: :first

    fill_in "Categoriaegreso", with: @egreso.categoriaegreso_id
    fill_in "Fecha", with: @egreso.fecha
    fill_in "Glosa", with: @egreso.glosa
    fill_in "Monto", with: @egreso.monto
    click_on "Update Egreso"

    assert_text "Egreso was successfully updated"
    click_on "Back"
  end

  test "should destroy Egreso" do
    visit egreso_url(@egreso)
    click_on "Destroy this egreso", match: :first

    assert_text "Egreso was successfully destroyed"
  end
end
