class CreateAgendas < ActiveRecord::Migration[7.2]
  def change
    create_table :agendas do |t|
      t.references :festival, unique: true
      t.timestamps
    end
  end
end
