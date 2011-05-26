class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.string :name
      t.string :i_name
      t.string :i2_name
      t.string :i3_name
      t.string :doc_name
      t.string :comment_name
      t.string :p6_name
      t.string :p7_name
      t.string :p8_name
      t.string :p9_name
      t.string :p10_name
      t.string :p11_name
      t.string :p12_name

      t.timestamps
    end
  end

  def self.down
    drop_table :sites
  end
end
