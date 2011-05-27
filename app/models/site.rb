# == Schema Information
# Schema version: 20110526005133
#
# Table name: sites
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  photo      :string(255)
#  photo2     :string(255)
#  photo3     :string(255)
#  doc        :string(255)
#  comment    :string(255)
#  p6         :string(255)
#  p7         :string(255)
#  p8         :string(255)
#  p9         :string(255)
#  p10        :string(255)
#  p11        :string(255)
#  p12        :string(255)
#  created_at :datetime
#  updated_at :datetime
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

  def fields
    positions - %w{name photo photo2 photo3 doc comment} 
  end
end
