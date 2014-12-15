class AddSlugToAd < ActiveRecord::Migration
  def up
  	add_column :ads, :slug, :string unless column_exists? :ads, :slug
  end

  def down
  	remove_column :ads, :slug, :string unless column_exists? :ads, :slug
  end
end
