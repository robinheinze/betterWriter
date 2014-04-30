class AddApprovalToBlurts < ActiveRecord::Migration
  def change
    add_column :blurts, :approval, :integer
  end
end
