class CreateTrains < ActiveRecord::Migration[5.0]
  def change
    create_table :trains do |t|
      t.integer :short
      t.integer :long
      t.integer :jump
      t.integer :hand
      t.integer :situp
      t.integer :side
      t.timestamps
      t.references :user
    end
  end
end
