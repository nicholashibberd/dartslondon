class AddTitleTagToRegions < ActiveRecord::Migration
  def change
    add_column :regions, :title_tag, :string
  end
end
