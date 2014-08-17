class CreatePubs < ActiveRecord::Migration
  def change
    create_table :pubs do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
