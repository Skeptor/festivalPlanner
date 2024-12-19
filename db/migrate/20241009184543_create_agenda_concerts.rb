class CreateAgendaConcerts < ActiveRecord::Migration[7.2]
  def change
    create_table :agenda_concerts do |t|
      t.references :agenda
      t.references :concert
      t.boolean :discarded, default: false
      t.timestamps
    end
  end
end
