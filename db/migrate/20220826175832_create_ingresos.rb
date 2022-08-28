class CreateIngresos < ActiveRecord::Migration[7.0]
  def change
    create_table :ingresos do |t|
      t.date :fecha
      t.integer :monto
      t.text :glosa
      t.references :categoriaingreso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
