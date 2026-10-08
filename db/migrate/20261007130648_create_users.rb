class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :full_name
      t.string :password
      t.boolean :is_active, default: true

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
