class CreateDatasheets < ActiveRecord::Migration[8.1]
  def change
    create_table :datasheets do |t|
      t.jsonb :data

      t.timestamps
    end
  end
end
