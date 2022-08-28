# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_26_175848) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoriaegresos", force: :cascade do |t|
    t.string "categoria"
    t.string "icono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categoriaingresos", force: :cascade do |t|
    t.string "categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "egresos", force: :cascade do |t|
    t.date "fecha"
    t.integer "monto"
    t.text "glosa"
    t.bigint "categoriaegreso_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categoriaegreso_id"], name: "index_egresos_on_categoriaegreso_id"
  end

  create_table "ingresos", force: :cascade do |t|
    t.date "fecha"
    t.integer "monto"
    t.text "glosa"
    t.bigint "categoriaingreso_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categoriaingreso_id"], name: "index_ingresos_on_categoriaingreso_id"
  end

  create_table "personas", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "rut"
    t.string "nombre"
    t.integer "telefono"
    t.bigint "saldo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_personas_on_email", unique: true
    t.index ["reset_password_token"], name: "index_personas_on_reset_password_token", unique: true
    t.index ["saldo_id"], name: "index_personas_on_saldo_id"
  end

  create_table "saldos", force: :cascade do |t|
    t.integer "balance"
    t.bigint "ingreso_id", null: false
    t.bigint "egreso_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["egreso_id"], name: "index_saldos_on_egreso_id"
    t.index ["ingreso_id"], name: "index_saldos_on_ingreso_id"
  end

  add_foreign_key "egresos", "categoriaegresos"
  add_foreign_key "ingresos", "categoriaingresos"
  add_foreign_key "saldos", "egresos"
  add_foreign_key "saldos", "ingresos"
end
