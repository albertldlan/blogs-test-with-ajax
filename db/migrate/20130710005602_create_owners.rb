class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.references :user
      t.references :blog

      t.timestamps
    end
    add_index :owners, :user_id
    add_index :owners, :blog_id
  end
end
