class AddCategoryIdToContents < ActiveRecord::Migration
def self.up
    add_column(:contents, :category_id, :integer)
    add_index(:contents, :category_id)
  end

  def self.down
    remove_index(:contents, :column => :category_id)
    remove_column(:contents, :category_id)
  end
end