class CreateSaldos < ActiveRecord::Migration[7.0]
  def change
    create_table :saldos do |t|
      t.integer :balance
      t.references :ingreso, null: false, foreign_key: true
      t.references :egreso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
