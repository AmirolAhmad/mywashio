class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.belongs_to :category, index: true
      t.belongs_to :type, index: true
      t.belongs_to :user, index: true
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :size
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
