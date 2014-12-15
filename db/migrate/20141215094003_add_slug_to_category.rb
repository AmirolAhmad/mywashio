class AddSlugToCategory < ActiveRecord::Migration
  def up
  	add_column :categories, :slug, :string unless column_exists? :categories, :slug
  end

  def down
  	remove_column :categories, :slug, :string unless column_exists? :categories, :slug
  end
end
