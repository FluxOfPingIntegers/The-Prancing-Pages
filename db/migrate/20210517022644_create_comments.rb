class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :character_id
      t.string :content
      t.integer :timestamp
    end
  end
end
