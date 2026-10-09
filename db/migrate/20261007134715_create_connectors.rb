class CreateConnectors < ActiveRecord::Migration[8.1]
  def change
    create_table :connectors do |t|
      t.string :code, null: false
      t.integer :shell_size
      t.integer :total_contact_amount
      t.boolean :contact_type
      t.jsonb :contacts
      t.integer :connecting_cycles
      t.integer :mean_time_to_failure
      t.integer :storage_life
      t.integer :max_operating_voltage
      t.jsonb :parameters
      t.references :datasheet, null: false, foreign_key: true
      t.boolean :is_obsolete, default: false, null: false

      t.timestamps
    end
    add_index :connectors, :code, unique: true
  end
end
