class AddVideoToMessage < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :video, :string
  end
end
