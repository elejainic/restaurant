class AddStateToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :state, :string 
    add_column :restaurants, :zipcode, :string 
  end
end
