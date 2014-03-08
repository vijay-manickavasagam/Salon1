class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :salon, index: true

      t.timestamps
    end
    add_index :comments, :salon_id
  end
end
