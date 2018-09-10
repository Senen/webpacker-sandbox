class CreateListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :list_items do |t|
      t.string :title
      t.text :description
      t.datetime :done_at
      t.integer :position

      t.timestamps
    end
  end
end
