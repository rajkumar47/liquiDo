# == Schema Information
# Schema version: 20110526005133
#
# Table name: records
#
#  id               :integer         not null, primary key
#  site_id          :integer         not null
#  photo_file_name  :string(255)
#  photo2_file_name :string(255)
#  photo3_file_name :string(255)
#  doc_file_name    :string(255)
#  comment          :text
#  p6               :
#  p7               :
#  p8               :
#  p9               :
#  p10              :
#  p11              :
#  p12              :
#  created_at       :datetime
#  updated_at       :datetime
#

class Record < ActiveRecord::Base
  belongs_to  :site

  validates :site_id,   :presence => true

  # --------------------
  # Paperclip
  has_attached_file :photo,
    :styles => {
      :thumb => "60x48#",
      :medium => "400x320>"
     },
     :url => "/images/photos/:basename.:style.:extension",
     :path => ":rails_root/public/images/photos/:basename.:style.:extension"
  has_attached_file :photo2,
    :styles => {
      :small => "150x120"
     },
     :url => "/images/photos/:basename.:style.:extension",
     :path => ":rails_root/public/images/photos/:basename.:style.:extension"
  has_attached_file :photo3,
    :styles => {
      :small => "150x120"
     },
     :url => "/images/photos/:basename.:style.:extension",
     :path => ":rails_root/public/images/photos/:basename.:style.:extension"
  has_attached_file :doc,
     :url => "/docs/:basename.:style.:extension",
     :path => ":rails_root/public/docs/:basename.:style.:extension"
end
