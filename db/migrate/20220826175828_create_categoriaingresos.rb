class CreateCategoriaingresos < ActiveRecord::Migration[7.0]
  def change
    create_table :categoriaingresos do |t|
      t.string :categoria

      t.timestamps
    end
  end
end
