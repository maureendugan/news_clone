class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.string :url
      t.integer :user_id
      t.time :post_time
      t.integer :ranking

      t.timestamps
    end
  end
end
