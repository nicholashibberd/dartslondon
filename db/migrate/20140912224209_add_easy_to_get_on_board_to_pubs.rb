class AddEasyToGetOnBoardToPubs < ActiveRecord::Migration
  def change
    add_column :pubs, :easy_to_get_on_board, :integer
  end
end
