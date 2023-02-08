class ChangeUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string, default: "Name", null: false
  end
end
