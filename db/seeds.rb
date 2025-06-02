# This file should ensure the existence of records required to run the application in every environment (production,# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

Festival.create(name: "Sonorama Ribera", number_of_days: 4)

groups = [
  "ÁLAMO 51",
  "ALBERTTINNY",
  "ALEC LÓPEZ",
  "ALIS",
  "ALIZZZ",
  "ALMÁCOR",
  "AMAIA",
  "ANABEL LEE",
  "ÁNGELA GONZÁLEZ",
  "ANI QUEEN",
  "ANIMAL OCULTO",
  "ARDE BOGOTÁ",
  "ARIZONA BABY",
  "ASCUA",
  "ASH",
  "BANDERA ROMEO",
  "BARRY B",
  "BAUER",
  "BELICE",
  "BESMAYA",
  "BESTIA BEBÉ",
  "CAFÉ QUIJANO",
  "CALA VENTO",
  "CAMELLOS",
  "CAPITÁN SUNRISE",
  "CARAMELORARO",
  "CARLOS ANN",
  "CARLOS ARES",
  "CARLOS JEAN",
  "CARLOS SADNESS",
  "CAROLINA DURANTE",
  "CHAMBAO",
  "CHICLE",
  "CIANÓTICAS PERDIDAS",
  "COSMIC WACHO",
  "CRISTALINO",
  "CUPIDO",
  "CYCLE",
  "DE RANCHO",
  "DELAPORTE",
  "DELGAO",
  "DENISDENIS",
  "DIAGNÓSTICO BINARIO",
  "DISCO BAHÍA",
  "DOCTOR WATTSON",
  "DON PATRICIO",
  "DORIAN",
  "DUNCAN DHU",
  "DUQUE",
  "EL NIDO",
  "EL SOMBRERO DEL ABUELO",
  "ELYELLA",
  "EMBUSTEROS",
  "EN TOL SARMIENTO",
  "ENOL",
  "EXSONVALDES",
  "EZEZEZ",
  "FERMÍN MUGURUZA",
  "FERNANDOCOSTA",
  "FIN DEL MUNDO",
  "FRANZ FERDINAND",
  "FUZZZ BY DJ NANO",
  "GARA DURAN",
  "GINEBRAS",
  "GREEN VALLEY",
  "GUACAMAYO DJ’s",
  "HENS",
  "HEY KID",
  "HISTERIA PUNKROCK",
  "ILAN AMORES",
  "INAZIO",
  "INNMIR",
  "ÍÑIGO QUINTERO",
  "JAVIERA MENA",
  "JUDELINE",
  "JULIETA 21",
  "KALAS Y LEGEND X KOPOET",
  "KIKE M",
  "LA LA LOVE YOU",
  "LA RAIZ",
  "LA SANTISIMA VOLADORA",
  "LA ZOWI",
  "LAVIDA",
  "LOS GALVÁN",
  "LOS NIÑOS JESÚS",
  "LOS PUNSETES",
  "MAESTRO ESPADA",
  "MAGIC",
  "MAREN",
  "MARLON",
  "MATEO ERAÑA",
  "MAURI",
  "MAXIMILIANO CALVO",
  "MELIFLUO",
  "MERCEDES CANAS",
  "MERINO",
  "MICHAEL FOSTER",
  "MIGUEL DE LUCAS",
  "MISS CAFFEINA",
  "MODERMAIN",
  "MR. KILOMBO",
  "MUSAS Y FUSAS",
  "NATALIA LACUNZA",
  "NENA DACONTE",
  "NEVERLAND BARI",
  "NIKONE",
  "NIL MOLINER",
  "NIÑOS BASTARDOS",
  "NIÑOS LUCHANDO",
  "NO QUIERO",
  "NÔRTE",
  "NUDOZURDO",
  "PABLOPABLO",
  "PARQUESVR",
  "PAULA MATTHEUS",
  "PAVLENHA",
  "PERSEIDA",
  "PIGNOISE",
  "PROYECTO PERLI",
  "QUERALT LAHOZ",
  "QUERIDO",
  "QUIMIROCK",
  "RATA",
  "RAULE",
  "RAY COYOTE",
  "RED MOON YARD",
  "RUFUS T. FIREFLY",
  "RULO Y LA CONTRABANDA",
  "RUTO NEÓN",
  "SANGUIJUELAS DEL GUADIANA",
  "SANTERO Y LOS MUCHACHOS",
  "SARA SOCAS",
  "SARRIA",
  "SHE'S A STAR DJ",
  "SILOÉ",
  "SOGE CULEBRA",
  "SOL PEREYRA",
  "SUPERGRASS",
  "TELEPHUNKEN",
  "TENDA",
  "THE K'S",
  "THE ORO",
  "TITO RAMÍREZ",
  "TRASHI",
  "ULMUS",
  "VANGOURA",
  "VASCK",
  "VICENTE CALDERÓN",
  "VICTOR RUTTY, ROBER DEL PYRO & DJ KAEF",
  "VICTORIAS",
  "VIVA SUECIA",
  "WALLS",
  "ZAHARA"
]

groups.each do |group|
  Group.create(name: group)
end

puts "✅ Grupos creados o encontrados: #{groups.size}"

stage_names = [ "Escenario 1", "Escenario 2", "Escenario 3", "Escenario 4" ]

stage_names.each do |name|
  Stage.find_or_create_by!(name: name)
end

puts "✅ Escenarios creados o encontrados: #{stage_names.size}"


# Crear conciertos del 6 al 10 de agosto
stages = stage_names.map { |n| Stage.find_by(name: n) }
available_groups = group_names.shuffle
festival_dates = (Date.new(2025, 8, 6)..Date.new(2025, 8, 10))

festival_dates.each do |date|
  stages.each do |stage|
    start_time = DateTime.new(date.year, date.month, date.day, 17, 0, 0)

    6.times do
      break if available_groups.empty?
      group_name = available_groups.pop
      group = Group.find_by(name: group_name)

      if group
        Concert.create!(
          group: group,
          stage: stage,
          start_time: start_time,
          end_time: start_time + 1.hour
        )
        puts "🎵 #{group.name} → #{stage.name} → #{date} → #{start_time.strftime('%H:%M')}"
        start_time += 1.hour + 15.minutes
      else
        puts "⚠️ Grupo no encontrado: #{group_name}"
      end
    end
  end
end
puts "✅ Conciertos creados para el festival del 6 al 10 de agosto"
