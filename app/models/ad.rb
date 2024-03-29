# == Schema Information
#
# Table name: ads
#
#  id          :integer          not null, primary key
#  category_id :integer
#  type_id     :integer
#  user_id     :integer
#  bedrooms    :integer
#  bathrooms   :integer
#  size        :integer
#  title       :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  slug        :string(255)
#
# Indexes
#
#  index_ads_on_category_id  (category_id)
#  index_ads_on_type_id      (type_id)
#  index_ads_on_user_id      (user_id)
#

class Ad < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: [:slugged, :finders, :history]
	
  belongs_to :category
  belongs_to :type
  belongs_to :user

  scope :by_category, -> (category_id) { where(category_id: category_id) }
end
