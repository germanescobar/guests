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

class Guest < ApplicationRecord
  enum status: [:invited, :going, :not_going]
end
