class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.integer :user_id
      t.timestamps
    end

    create_table :blurts_shows do |t|
      t.belongs_to :blurt
      t.belongs_to :show
    end

    add_column :upvotes, :show_id, :integer
  end
end
