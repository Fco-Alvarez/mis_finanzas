class CreateEgresos < ActiveRecord::Migration[7.0]
  def change
    create_table :egresos do |t|
      t.date :fecha
      t.integer :monto
      t.text :glosa
      t.references :categoriaegreso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
