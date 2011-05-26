class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.string :name
      t.string :p1_name
      t.string :p2_name
      t.string :p3_name
      t.string :p4_name
      t.string :p5_name
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
