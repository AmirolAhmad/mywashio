class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
