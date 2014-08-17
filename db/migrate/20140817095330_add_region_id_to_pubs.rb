class AddRegionIdToPubs < ActiveRecord::Migration
  def change
    add_column :pubs, :region_id, :integer
  end
end
