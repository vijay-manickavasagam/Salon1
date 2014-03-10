class RemovePostIdFromComment < ActiveRecord::Migration
  remove_column :comments, :post_id
  def change
  end
end
