class AddCorreoToPersona < ActiveRecord::Migration[5.2]
  def change
    add_column :personas, :correo, :string
  end
end
