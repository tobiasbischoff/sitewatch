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

require 'spec_helper'

describe Part do
  pending "add some examples to (or delete) #{__FILE__}"
end
