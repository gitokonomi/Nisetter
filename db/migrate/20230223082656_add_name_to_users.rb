class AddNameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :introduction, :text
    add_column :users, :is_deleted, :boolean, null: false, default: false
    add_column :users, :telephon, :integer
    add_column :users, :place, :text
  end
end
