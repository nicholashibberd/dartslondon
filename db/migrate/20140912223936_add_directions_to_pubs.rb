class AddDirectionsToPubs < ActiveRecord::Migration
  def change
    add_column :pubs, :directions, :text
  end
end
