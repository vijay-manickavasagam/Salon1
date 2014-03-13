class AddSalonIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :salon_id, :integer
  end
end
