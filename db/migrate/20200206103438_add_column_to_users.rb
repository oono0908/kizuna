class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :age, :integer
    add_column :users, :carrer, :string
    add_column :users, :comment, :string
  end
end
