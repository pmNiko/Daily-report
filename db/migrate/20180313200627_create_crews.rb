class CreateCrews < ActiveRecord::Migration[5.1]
  def change
    create_table :crews do |t|
      t.date :date
      t.integer :truck

      t.timestamps
    end
  end
end
