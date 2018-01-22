class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string 	:title
      t.text 	:content
      t.integer :order
      t.integer :like

      t.timestamps
    end
  end
end
