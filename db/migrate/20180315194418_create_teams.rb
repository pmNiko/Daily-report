class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.date :date
      t.integer :truck

      t.timestamps
    end
  end
end
