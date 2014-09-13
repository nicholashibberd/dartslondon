class AddRestOfPubToPubs < ActiveRecord::Migration
  def change
    add_column :pubs, :rest_of_pub, :text
  end
end
