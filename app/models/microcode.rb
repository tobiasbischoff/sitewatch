# == Schema Information
#
# Table name: microcodes
#
#  id         :integer          not null, primary key
#  serial     :string(255)
#  version    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Microcode < ActiveRecord::Base
  attr_accessible :serial, :version
end
