class ReferenceArticleText < ActiveRecord::Migration[5.1]
  def up
  	create_table :article_text do |t|
  		t.references :article, index: true
  		t.references :text, index: true
  	end
  end
end
