class CreateResposta < ActiveRecord::Migration
  def change
    create_table :resposta do |t|
      t.string :texto
      t.references :questao

      t.timestamps
    end
    add_index :resposta, :questao_id
  end
end
