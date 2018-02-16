class CreateBookers < ActiveRecord::Migration[5.1]
  def change
    create_table :bookers do |t|
      t.string :title
      t.text :impression
      t.integer :user_id

      t.timestamps
    end
  end
end
