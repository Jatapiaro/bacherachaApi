class AddManyThingsToBump < ActiveRecord::Migration
  def change
    add_column :bumps, :price, :integer
    add_column :bumps, :completed, :boolean
    add_column :bumps, :kg, :decimal
    add_column :bumps, :costales, :integer
  end
end
