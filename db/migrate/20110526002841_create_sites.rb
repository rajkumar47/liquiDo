class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.string :name
      t.string :photo
      t.string :photo2
      t.string :photo3
      t.string :doc
      t.string :comment
      t.string :p6
      t.string :p7
      t.string :p8
      t.string :p9
      t.string :p10
      t.string :p11
      t.string :p12

      t.timestamps
    end
  end

  def self.down
    drop_table :sites
  end
end
