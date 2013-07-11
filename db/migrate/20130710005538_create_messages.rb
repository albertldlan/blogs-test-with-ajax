class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :author
      t.text :message
      t.references :user
      t.references :post

      t.timestamps
    end
    add_index :messages, :user_id
    add_index :messages, :post_id
  end
end
