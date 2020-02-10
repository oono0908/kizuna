class CreateHips < ActiveRecord::Migration[5.0]
  def change
    create_table :hips do |t|
      t.references :user, foreign_key: true
      t.string :content
      t.string :video
      t.string :title
      t.timestamps
    end
  end
end
