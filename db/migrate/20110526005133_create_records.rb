class CreateRecords < ActiveRecord::Migration
  def self.up
    create_table :records do |t|
      t.column :site_id,  :integer,   :null => false
      t.column :photo_file_name,    :string
      t.column :photo2_file_name,   :string
      t.column :photo3_file_name,   :string
      t.column :doc_file_name,      :string
      t.column :comment,            :text
      t.column :p6,   :none
      t.column :p7,   :none
      t.column :p8,   :none
      t.column :p9,   :none
      t.column :p10,  :none
      t.column :p11,  :none
      t.column :p12,  :none

      t.timestamps
    end
    add_index :records, :site_id
  end

  def self.down
    drop_table :records
  end
end
