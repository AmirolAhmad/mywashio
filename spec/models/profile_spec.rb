# == Schema Information
#
# Table name: profiles
#
#  id           :integer          not null, primary key
#  full_name    :string(255)
#  address1     :string(255)
#  address2     :string(255)
#  city         :string(255)
#  postcode     :string(255)
#  state        :string(255)
#  country      :string(255)
#  phone_number :string(255)
#  user_id      :integer
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#

require 'rails_helper'

RSpec.describe Profile, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
