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

class Type < ActiveRecord::Base
  belongs_to :category
	has_many :ads
end
