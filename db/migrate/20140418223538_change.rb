class Change < ActiveRecord::Migration
  def change
    change_column :blurts, :content, :text
  end
end
