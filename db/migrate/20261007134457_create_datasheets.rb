class CreateDatasheets < ActiveRecord::Migration[8.1]
  def change
    create_table :datasheets do |t|
      t.jsonb :data

      t.timestamps
    end
    add_index :datasheets, :data, using: :gin
    add_index :datasheets, "(data ->> 'code')", unique: true
  end
end
