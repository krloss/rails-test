class CreateQuestaos < ActiveRecord::Migration
  def change
    create_table :questaos do |t|
      t.string :texto
      t.date :data

      t.timestamps
    end
  end
end
