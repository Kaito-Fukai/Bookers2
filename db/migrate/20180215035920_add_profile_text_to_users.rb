class AddProfileTextToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :profile_text, :text
  end
end
