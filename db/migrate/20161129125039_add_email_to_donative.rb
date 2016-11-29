class AddEmailToDonative < ActiveRecord::Migration
  def change
    add_column :donatives, :email, :string
  end
end
