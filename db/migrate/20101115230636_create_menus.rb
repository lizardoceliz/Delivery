class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.string :title
      t.text :description
      t.decimal :price, :precision => 6, :scale => 2
      t.float :calories
      t.belongs_to :category

      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
