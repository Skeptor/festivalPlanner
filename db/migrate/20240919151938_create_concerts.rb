class CreateConcerts < ActiveRecord::Migration[7.2]
  def change
    create_table :concerts do |t|
      t.references :stage, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.integer :day
      t.time :start_time

      t.timestamps
    end
  end
end
