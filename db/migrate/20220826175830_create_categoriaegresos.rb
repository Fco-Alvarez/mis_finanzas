class CreateCategoriaegresos < ActiveRecord::Migration[7.0]
  def change
    create_table :categoriaegresos do |t|
      t.string :categoria
      t.string :icono

      t.timestamps
    end
  end
end
