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

require 'rails_helper'

RSpec.describe Ad, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
