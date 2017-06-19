class CreateEscolhas < ActiveRecord::Migration
  def change
    create_table :escolhas do |t|
      t.text :texto
      t.integer :voto
      t.references :questao

      t.timestamps
    end
    add_index :escolhas, :questao_id
  end
end
