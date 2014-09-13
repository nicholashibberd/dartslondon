class AddBeerSelectionToPubs < ActiveRecord::Migration
  def change
    add_column :pubs, :beer_selection, :text
  end
end
