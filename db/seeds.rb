# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Festival.create(name: "ViñaRock", number_of_days: 3)
Group.create(name: "Ska-P")
Group.create(name: "Reincidentes")
Group.create(name: "Boikot")
Group.create(name: "La Raíz")
Group.create(name: "El Drogas")
Group.create(name: "El Kanka")
Group.create(name: "La Pegatina")
Group.create(name: "La Fuga")
Group.create(name: "Los Chikos del Maíz")
Group.create(name: "Narco")
Stage.create(name: "Escenario 1", festival_id: 1)
Stage.create(name: "Escenario 2", festival_id: 1)
Stage.create(name: "Escenario 3", festival_id: 1)
Concert.create(stage_id: 1, group_id: 1, day: 1, start_time: "17:00:00")
Concert.create(stage_id: 1, group_id: 2, day: 1, start_time: "18:00:00")
Concert.create(stage_id: 1, group_id: 3, day: 1, start_time: "19:00:00")
Concert.create(stage_id: 2, group_id: 4, day: 1, start_time: "17:00:00")
Concert.create(stage_id: 2, group_id: 5, day: 1, start_time: "18:00:00")
Concert.create(stage_id: 2, group_id: 6, day: 1, start_time: "19:00:00")
Concert.create(stage_id: 3, group_id: 7, day: 1, start_time: "17:00:00")
Concert.create(stage_id: 3, group_id: 8, day: 1, start_time: "18:00:00")
Concert.create(stage_id: 3, group_id: 9, day: 1, start_time: "19:00:00")
