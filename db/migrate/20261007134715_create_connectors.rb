class CreateConnectors < ActiveRecord::Migration[8.1]
  def change
    create_table :connectors do |t|
      t.integer :shell_size
      t.integer :total_contact_amount
      t.boolean :contact_type
      t.jsonb :contacts
      t.integer :connecting_cycles
      t.integer :mean_time_to_failure
      t.integer :storage_life
      t.decimal :max_operating_voltage, precision: 10, scale: 2
      t.jsonb :parameters
      t.references :datasheet, null: false, foreign_key: true
      t.boolean :is_obsolete, default: false 

      t.timestamps
    end
  end
end
