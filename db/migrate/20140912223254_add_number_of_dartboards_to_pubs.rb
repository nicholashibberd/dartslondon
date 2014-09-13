class AddNumberOfDartboardsToPubs < ActiveRecord::Migration
  def change
    add_column :pubs, :number_of_dartboards, :integer
  end
end
