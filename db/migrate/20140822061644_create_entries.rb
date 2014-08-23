class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.integer :batch_number
      t.string :phone_number

      t.timestamps
    end
  end
end
