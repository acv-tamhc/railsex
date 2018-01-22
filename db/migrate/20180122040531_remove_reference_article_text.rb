class RemoveReferenceArticleText < ActiveRecord::Migration[5.1]
  def change
  	drop_table :article_text
  end
end
