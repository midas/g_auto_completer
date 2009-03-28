class CreateThings < ActiveRecord::Migration
  def self.up
    create_table :things, :force => true do |t|
      t.string :name, :limit => 75, :null => false
      t.string :description, :limit => 150
      t.date :date

      t.integer :version, :null => false, :default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :things
  end
end