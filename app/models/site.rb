# == Schema Information
# Schema version: 20110526005133
#
# Table name: sites
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  i_name       :string(255)
#  i2_name      :string(255)
#  i3_name      :string(255)
#  doc_name     :string(255)
#  comment_name :string(255)
#  p6_name      :string(255)
#  p7_name      :string(255)
#  p8_name      :string(255)
#  p9_name      :string(255)
#  p10_name     :string(255)
#  p11_name     :string(255)
#  p12_name     :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Site < ActiveRecord::Base
  has_many  :records, :dependent => :destroy

  #--------
  # methods
  #
  def positions 
    @positions = []
    attributes.each do | position, name |
      @positions.push(position) if attribute_present?( position )  
    end
    @positions - %w{id created_at updated_at}
  end

end
