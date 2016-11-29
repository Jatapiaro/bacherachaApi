class CreateDonatives < ActiveRecord::Migration
  def change
    create_table :donatives do |t|
      t.references :user, index: true, foreign_key: true
      t.references :bump, index: true, foreign_key: true
      t.integer :money
      t.text :comment

      t.timestamps null: false
    end
  end
end
