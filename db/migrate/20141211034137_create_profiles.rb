class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :postcode
      t.string :state
      t.string :country
      t.string :phone_number

      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
