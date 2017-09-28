class AddLatLngToPubs < ActiveRecord::Migration
  def change
    add_column :pubs, :lat, :decimal, :precision => 15, :scale => 10
    add_column :pubs, :lng, :decimal, :precision => 15, :scale => 10
  end
end
