class CreateUserPoems < ActiveRecord::Migration[5.2]
  def change
    create_table :user_poems do |t|
      t.string :title
      t.string :author
      t.text :text
      t.string :classification
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
