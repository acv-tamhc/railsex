class CreateTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :texts do |t|
      t.string :headline
      t.integer :order
      t.string :sentence
      t.integer :like

      t.timestamps
    end
  end
end
