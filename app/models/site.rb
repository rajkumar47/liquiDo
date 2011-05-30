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
  
  validates :name,  :presence  => true,
                    :length     => { :within => 4..64 }
  #--------
  # methods
  #
  def used?(field)
    self[field] != "unused"  
  end

  def used
    @used = []
    self.attribute_names().each do |at|
      @used.push(at)  if self[at] != "unused"
    end
    @used - %w{id created_at updated_at}
  end

  def used_vars
    used - %w{name photo photo2 photo3 doc comment}
  end
  def used_photos
    used - %w{name doc comment p6 p7 p8 p9 p10 p11 p12}
  end
  def used_comments
    used?("comment") ? %w{comment} : []
  end
  def used_docs
    used?("doc") ? %w{doc} : []
  end

  #----------------
  # very Ugly. Replace when you have time
  def search( params )
    # we need the records associated with this site_id
    s_params = {:site_id => params[:id]}
    s_string = "site_id = :site_id "
    # for each search field, add where clause (pad with % for substring match)
    used_vars.each do |at|
      if params[at] && !params[ at ].empty?
        s_string += " AND #{at} LIKE :#{at} "
        s_params[ :"#{at}" ] = "%#{params[ at ]}%"
      end
    end
    Record.all( :conditions => [s_string, s_params] )
  end

end
