class AddAddressToPubs < ActiveRecord::Migration
  def change
    add_column :pubs, :address, :text
  end
end
