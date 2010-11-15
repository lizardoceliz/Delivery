class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.menu :belongs_to
      t.order :belongs_to

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
