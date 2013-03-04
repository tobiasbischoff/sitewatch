# == Schema Information
#
# Table name: contacts
#
#  id          :integer          not null, primary key
#  partynumber :string(255)
#  cname       :string(255)
#  cemail      :string(255)
#  cphone      :string(255)
#  websupport  :string(255)
#  ckind       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Contact do
  pending "add some examples to (or delete) #{__FILE__}"
end
