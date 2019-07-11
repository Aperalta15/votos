class CreatePersonas < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
      t.integer :cedula
      t.string :nombre
      t.string :apellido
      t.string :celular
      t.string :direccion
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
