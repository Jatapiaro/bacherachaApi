class ChangeLongitudeInBump < ActiveRecord::Migration
	def up
	  change_table :bumps do |t|
	    t.change :latitude, :integer, :limit => 12
	    t.change :longitude, :integer, :limit => 12
	  end
	end
	
	def down
	  change_table :bumps do |t|
	    t.change :latitude, :string
	    t.change :longitude, :string
	  end
	end
end
