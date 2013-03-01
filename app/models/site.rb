# == Schema Information
#
# Table name: sites
#
#  id          :integer          not null, primary key
#  partynumber :string(255)
#  partyname   :string(255)
#  address1    :string(255)
#  address2    :string(255)
#  address3    :string(255)
#  postalcode  :string(255)
#  city        :string(255)
#  primaryce   :string(255)
#  secondaryce :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Site < ActiveRecord::Base
  attr_accessible :address1, :address2, :address3, :city, :partyname, :partynumber, :postalcode, :primaryce, :secondaryce
 
  def self.search(search)
    if search
      find(:all, :conditions => ['partyname LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
  
end
