class ChangeLongitudeAndLatitudeToBumps < ActiveRecord::Migration
	def up
	  change_table :bumps do |t|
	    t.change :latitude, :decimal, :precision=>64, :scale=>12
	    t.change :longitude, :decimal, :precision=>64, :scale=>12
	  end
	end
	
	def down
	  change_table :bumps do |t|
	    t.change :latitude, :integer
	    t.change :longitude, :integer
	  end
	end
end
