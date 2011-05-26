class CreateRecords < ActiveRecord::Migration
  def self.up
    create_table :records do |t|
      t.column :site_id,  :integer,   :null => false
      t.column :p1_val,   :none
      t.column :p2_val,   :none
      t.column :p3_val,   :none
      t.column :p4_val,   :none
      t.column :p5_val,   :none
      t.column :p6_val,   :none
      t.column :p7_val,   :none
      t.column :p8_val,   :none
      t.column :p9_val,   :none
      t.column :p10_val, :none
      t.column :p11_val, :none
      t.column :p12_val, :none

      t.timestamps
    end
  end

  def self.down
    drop_table :records
  end
end
