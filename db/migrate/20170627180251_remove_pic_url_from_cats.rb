class RemovePicUrlFromCats < ActiveRecord::Migration[5.1]
  def change
    remove_column :cats, :pic_url, :string
  end
end
