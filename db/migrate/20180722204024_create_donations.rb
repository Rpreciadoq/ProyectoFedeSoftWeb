class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.integer :cuenta
      t.string :banco
      t.text :detalle

      t.timestamps
    end
  end
end
