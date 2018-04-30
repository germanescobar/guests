# == Schema Information
#
# Table name: guests
#
#  id         :integer          not null, primary key
#  email      :string
#  name       :string
#  status     :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class GuestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
