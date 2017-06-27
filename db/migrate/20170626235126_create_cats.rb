class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :pic_url
      t.text :likes_dislikes
      t.integer :age
      t.string :gender
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
