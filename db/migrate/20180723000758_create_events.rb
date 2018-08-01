class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :nombre
      t.text :lugar
      t.date :fecha
      t.text :participantes

      t.timestamps
    end
  end
end
