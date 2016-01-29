class AddTitleTagToPubs < ActiveRecord::Migration
  def change
    add_column :pubs, :title_tag, :string
  end
end
