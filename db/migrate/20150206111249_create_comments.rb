class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :creator_id
      t.text :body
      t.timestamps
    end
  end
end
