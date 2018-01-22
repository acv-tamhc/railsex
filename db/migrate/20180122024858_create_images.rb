class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :headline
      t.integer :order
      t.string :picture
      t.integer :like

      t.timestamps
    end
  end
end
