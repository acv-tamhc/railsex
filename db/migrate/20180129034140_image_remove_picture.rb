class ImageRemovePicture < ActiveRecord::Migration[5.1]
  def change
  	remove_column :images, :picture
  end
end
