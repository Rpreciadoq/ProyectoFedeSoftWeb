class CreateFoundations < ActiveRecord::Migration[5.2]
  def change
    create_table :foundations do |t|
      t.string :nombre
      t.text :resumen
      t.text :objeto
      t.string :telefono
      t.string :sitio_web

      t.timestamps
    end
  end
end
