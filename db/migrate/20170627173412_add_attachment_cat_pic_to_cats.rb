class AddAttachmentCatPicToCats < ActiveRecord::Migration[5.1]
  def self.up
    change_table :cats do |t|
      t.attachment :cat_pic
    end
  end

  def self.down
    remove_attachment :cats, :cat_pic
  end
end
