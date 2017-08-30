class AddScoreToPubs < ActiveRecord::Migration
  def change
    add_column :pubs, :score, :integer
  end
end
