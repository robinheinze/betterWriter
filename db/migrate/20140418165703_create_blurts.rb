class CreateBlurts < ActiveRecord::Migration
  def change
    create_table :blurts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
