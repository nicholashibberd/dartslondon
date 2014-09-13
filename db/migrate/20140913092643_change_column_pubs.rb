class ChangeColumnPubs < ActiveRecord::Migration
  change_column :pubs, :easy_to_get_on_board, :text
end
