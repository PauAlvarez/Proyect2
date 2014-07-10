class AddApellidosToUsers < ActiveRecord::Migration
  def change
    add_column :users, :apellidos, :string
  end
end
