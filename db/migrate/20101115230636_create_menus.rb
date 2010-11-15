class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.text :description
      t.float :price
      t.float :calories
      t.category :belongs_to

      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
