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

require 'spec_helper'

describe Site do
  pending "add some examples to (or delete) #{__FILE__}"
end
