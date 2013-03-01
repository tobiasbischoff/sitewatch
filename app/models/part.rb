# == Schema Information
#
# Table name: parts
#
#  id              :integer          not null, primary key
#  partynumber     :string(255)
#  instancenumber  :string(255)
#  serialnumber    :string(255)
#  installdate     :string(255)
#  partdescription :string(255)
#  itemnumber      :string(255)
#  family          :string(255)
#  pclass          :string(255)
#  line            :string(255)
#  csistatus       :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Part < ActiveRecord::Base
  attr_accessible  :csistatus, :family, :installdate, :instancenumber, :itemnumber, :line, :partdescription, :partynumber, :pclass, :serialnumber
  
  def self.search(search)
    if search
      find(:all, :conditions => ['serialnumber LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end


end
