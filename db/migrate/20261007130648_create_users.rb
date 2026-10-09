class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :full_name, null: false
      t.string :password, null: false
      t.boolean :is_active, default: true, null: false

      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users , [:email, :password]
  end
end
