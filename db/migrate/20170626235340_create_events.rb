class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :date_from
      t.string :date_to
      t.text :description
      t.belongs_to :cat, foreign_key: true

      t.timestamps
    end
  end
end
