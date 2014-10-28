class AddCheckInToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :check_in, :string
  end
end
