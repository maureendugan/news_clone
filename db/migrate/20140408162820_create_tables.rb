class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :name, :string
      t.timestamps
    end

    create_table :links do |t|
      t.column :name, :string
      t.column :url, :string
      t.column :ranking, :integer
      t.belongs_to :user
      t.timestamps
    end

    create_table :votes do |t|
      t.belongs_to :link
      t.belongs_to :user
      t.timestamps
    end

    create_table :comments do |t|
      t.column :text, :text
      t.belongs_to :link
      t.belongs_to :user
      t.timestamps
    end
  end
end
