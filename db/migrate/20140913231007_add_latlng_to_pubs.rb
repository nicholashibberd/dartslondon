class AddLatlngToPubs < ActiveRecord::Migration
  def change
    add_column :pubs, :latlng, :string
  end
end
