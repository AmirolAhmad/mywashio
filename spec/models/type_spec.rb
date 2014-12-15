# == Schema Information
#
# Table name: types
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_types_on_category_id  (category_id)
#

require 'rails_helper'

RSpec.describe Type, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
