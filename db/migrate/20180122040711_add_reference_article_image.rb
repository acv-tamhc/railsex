class AddReferenceArticleImage < ActiveRecord::Migration[5.1]
  def up
  	add_reference :images, :article, index: true
  end

  def down
  	remove_column :images, :article_id
  end	
end
