# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  slug       :string(255)
#

class Category < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: [:slugged, :finders, :history]
	
	has_many :types
	has_many :ads
end
