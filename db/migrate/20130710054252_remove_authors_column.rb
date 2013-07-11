class RemoveAuthorsColumn < ActiveRecord::Migration
  def up
  	remove_column :messages, :author
  end

  def down
  end
end
