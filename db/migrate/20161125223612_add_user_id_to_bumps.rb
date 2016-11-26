class AddUserIdToBumps < ActiveRecord::Migration
  def change
    add_reference :bumps, :user, index: true, foreign_key: true
  end
end
