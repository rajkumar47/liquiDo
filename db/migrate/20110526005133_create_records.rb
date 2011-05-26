class CreateRecords < ActiveRecord::Migration
  def self.up
    create_table :records do |t|
      t.column :site_id,  :integer,   :null => false
      t.column :photo_file_name,    :string
      t.column :photo2_file_name,   :string
      t.column :photo3_file_name,   :string
      t.column :doc_file_name,      :string
      t.column :comment,            :text
      t.column :p6_val,   :none
      t.column :p7_val,   :none
      t.column :p8_val,   :none
      t.column :p9_val,   :none
      t.column :p10_val,  :none
      t.column :p11_val,  :none
      t.column :p12_val,  :none

      t.timestamps
    end
    add_index :records, :site_id
  end

  def self.down
    drop_table :records
  end
end
