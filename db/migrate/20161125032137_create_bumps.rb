class CreateBumps < ActiveRecord::Migration
  def change
    create_table :bumps do |t|
      t.string :latitude
      t.string :longitude
      t.integer :lengthSteps
      t.integer :widthSteps
      t.integer :depth
      t.string :videoUrl

      t.timestamps null: false
    end
  end
end
