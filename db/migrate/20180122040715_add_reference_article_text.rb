class AddReferenceArticleText < ActiveRecord::Migration[5.1]
  def up
  	add_reference :texts, :article, index: true
  end

  def down
  	remove_column :texts, :article_id 
  end
end
