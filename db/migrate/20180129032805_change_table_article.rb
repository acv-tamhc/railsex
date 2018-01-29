class ChangeTableArticle < ActiveRecord::Migration[5.1]
  def change
  	rename_column :articles, :content, :description
  end
end
