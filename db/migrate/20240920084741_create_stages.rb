class CreateStages < ActiveRecord::Migration[7.2]
  def change
    create_table :stages do |t|
      t.references :festival, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
