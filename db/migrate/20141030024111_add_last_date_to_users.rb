class AddLastDateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_date, :string
  end
end
