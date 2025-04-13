class CreateConcerts < ActiveRecord::Migration[7.2]
  def change
    create_table :concerts do |t|
      t.references :stage, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.datetime :start_time, null: false
      t.datetime :end_time

      t.timestamps
    end
  end
end
