class AddCategoryIdToContents < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :category_id
      t.string   :studio
      t.string   :creater
      t.string   :event_workshop
      t.string   :item
    end
  end
end
