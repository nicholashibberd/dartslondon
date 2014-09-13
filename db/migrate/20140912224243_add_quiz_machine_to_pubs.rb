class AddQuizMachineToPubs < ActiveRecord::Migration
  def change
    add_column :pubs, :quiz_machine, :text
  end
end
