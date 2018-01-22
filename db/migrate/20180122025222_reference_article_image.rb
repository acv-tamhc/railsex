class ReferenceArticleImage < ActiveRecord::Migration[5.1]
  def up
  	create_table :article_image do |t|
  		t.references :article, index: true
  		t.references :image, index: true
  	end
  end
end
