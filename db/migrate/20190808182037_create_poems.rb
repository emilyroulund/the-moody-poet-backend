class CreatePoems < ActiveRecord::Migration[5.2]
  def change
    create_table :poems do |t|
      t.string :author
      t.string :classification
      t.string :period
      t.string :reference
      t.string :region
      t.text :text
      t.string :title
      t.string :year

      t.timestamps
    end
  end
end
