class CreateFestivals < ActiveRecord::Migration[7.2]
  def change
    create_table :festivals do |t|
      t.string :name
      t.integer :number_of_days

      t.timestamps
    end
  end
end
