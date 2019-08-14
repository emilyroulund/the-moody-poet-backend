class CreatePoems < ActiveRecord::Migration[5.2]
  def change
      create_table :poems do |t|
            t.string :text, array: true, default: []
            t.string :author
            t.string :title
            t.string :year
            t.string :region
            t.string :reference
            t.string :period
            t.string :classification

            t.timestamps
          end
  end
end
