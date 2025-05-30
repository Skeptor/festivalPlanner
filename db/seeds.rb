# This file should ensure the existence of records required to run the application in every environment (production,# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

Festival.create(name: "ViñaRock", number_of_days: 4)
Stage.create(name: "NEGRITA", festival_id: 1)
Stage.create(name: "CUTTY SARK", festival_id: 1)
Stage.create(name: "VILLARROBLEDO ARGIMIRO MARTINEZ", festival_id: 1)
Stage.create(name: "BABILONIA", festival_id: 1)
Stage.create(name: "JÄGERMEISTER", festival_id: 1)
Stage.create(name: "CARPA ROCK", festival_id: 1)

groups = [ "NON SERVIUM", "EL ÚLTIMO KE ZIERRE", "EXPRIMIDOS", "BLOODY KITCHEN", "FERMÍN MUGURUZA", "BUHOS", "BULLYS", "AMYGDALA", "ALADEMOSKA", "EL TÍO LA CARETA",  "LA RAÍZ", "FERMIN MUGURUZA", "RIOT PROPAGANDA", "LÁGRIMAS DE SANGRE",  "LENDAKARIS MUERTOS", "TALCO", "BOIKOT", "RULO Y LA CONTRABANDA", "MÄGO DE OZ",  "LOS DE MARRAS", "KAOTIKO", "EL CANIJO DE JEREZ", "SONS OF AGUIRRE & SCILA",  "CALIFATO 3/4", "LA FÚMIGA", "DERBY MOTORETA'S BURRITO KACHIMBA", "REINCIDENTES",  "ITACA BAND", "PORRETAS", "EN TOL SARMIENTO", "BENITO KAMELAS", "THE TYETS",  "TREMENDA JAURÍA", "KAOS URBANO", "EL RENO RENARDO", "DEF CON DOS",  "EL NIÑO DE LA HIPOTECA", "SÍNKOPE", "ME FRITOS AND THE GIMME CHEETOS",  "DAKIDARRÍA", "LA GRIPE Y TÚ", "MAMÁ LADILLA", "GRITANDO EN SILENCIO",  "O'FUNK'ILLO", "CICLONAUTAS", "PORCO BRAVO", "LA ÉLITE", "MALAPUTA",  "LA EXCAVADORA", "KAMIKAZES", "ONZA", "FREE CITY", "GREX", "SÜNE",  "LINAJE", "BIHOTZA", "LXS NADIE", "LA MARMITA", "CABALLOS SALVAJES",  "LOS PESTUNCIOS", "BAND IN A MILLION (Tributo Guns N' Roses)",  "PARA MAL O PARA BIEN (Tributo Rosendo)", "ISEO & DODOSOUND",  "GREEN VALLEY", "NIKONE", "FIGA FLAWAS", "AUXILI", "EL DUENDE CALLEJERO",  "PARKINEOS", "LA SRA. TOMASA", "BLAKE", "SENYOR OCA", "KULTO KULTIBO", "GEA",  "KAZE", "MALA RODRÍGUEZ", "TOTEKING", "JARFAITER", "JUANCHO MARQUÉS",  "ILL PEKEÑO & ERGO PRO", "SANTA SALUT", "LAS NINYAS DEL CORRO", "BEJO",  "MIDAS ALONSO", "OCER Y RADE", "FAENNA" ]

groups.each do |group|
  Group.create(name: group)
end

# DAY 2 CONCERTS - May 2, 2025
# NEGRITA Stage
Concert.create!(
  group: Group.find_by(name: "EL NIÑO DE LA HIPOTECA"),
  stage: Stage.find_by(name: "NEGRITA"),
  start_time: DateTime.new(2025, 5, 1, 16, 35),
  end_time: DateTime.new(2025, 5, 1, 17, 40)
)

Concert.create!(
  group: Group.find_by(name: "EN TOL SARMIENTO"),
  stage: Stage.find_by(name: "NEGRITA"),
  start_time: DateTime.new(2025, 5, 1, 19, 0),
  end_time: DateTime.new(2025, 5, 1, 20, 15)
)

Concert.create!(
  group: Group.find_by(name: "FERMÍN MUGURUZA"),
  stage: Stage.find_by(name: "NEGRITA"),
  start_time: DateTime.new(2025, 5, 1, 21, 55),
  end_time: DateTime.new(2025, 5, 1, 23, 25)
)

Concert.create!(
  group: Group.find_by(name: "LA FÚMIGA"),
  stage: Stage.find_by(name: "NEGRITA"),
  start_time: DateTime.new(2025, 5, 3, 1, 5), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 3, 2, 35)  # Next day (overnight)
)

# CUTTY SARK Stage
Concert.create!(
  group: Group.find_by(name: "REINCIDENTES"),
  stage: Stage.find_by(name: "CUTTY SARK"),
  start_time: DateTime.new(2025, 5, 1, 17, 45),
  end_time: DateTime.new(2025, 5, 1, 18, 55)
)

Concert.create!(
  group: Group.find_by(name: "LÁGRIMAS DE SANGRE"),
  stage: Stage.find_by(name: "CUTTY SARK"),
  start_time: DateTime.new(2025, 5, 1, 20, 20),
  end_time: DateTime.new(2025, 5, 1, 21, 50)
)

Concert.create!(
  group: Group.find_by(name: "RIOT PROPAGANDA"),
  stage: Stage.find_by(name: "CUTTY SARK"),
  start_time: DateTime.new(2025, 5, 1, 23, 30),
  end_time: DateTime.new(2025, 5, 3, 1, 0) # Next day (overnight)
)

Concert.create!(
  group: Group.find_by(name: "TREMENDA JAURÍA"),
  stage: Stage.find_by(name: "CUTTY SARK"),
  start_time: DateTime.new(2025, 5, 3, 2, 40), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 3, 3, 55)   # Next day (overnight)
)

# VILLARROBLEDO ARGIMIRO MARTINEZ Stage
Concert.create!(
  group: Group.find_by(name: "GRITANDO EN SILENCIO"),
  stage: Stage.find_by(name: "VILLARROBLEDO ARGIMIRO MARTINEZ"),
  start_time: DateTime.new(2025, 5, 1, 16, 35),
  end_time: DateTime.new(2025, 5, 1, 17, 40)
)

Concert.create!(
  group: Group.find_by(name: "SÍNKOPE"),
  stage: Stage.find_by(name: "VILLARROBLEDO ARGIMIRO MARTINEZ"),
  start_time: DateTime.new(2025, 5, 1, 19, 0),
  end_time: DateTime.new(2025, 5, 1, 20, 15)
)

Concert.create!(
  group: Group.find_by(name: "CALIFATO 3/4"),
  stage: Stage.find_by(name: "VILLARROBLEDO ARGIMIRO MARTINEZ"),
  start_time: DateTime.new(2025, 5, 1, 21, 55),
  end_time: DateTime.new(2025, 5, 1, 23, 25)
)

Concert.create!(
  group: Group.find_by(name: "DERBY MOTORETA'S BURRITO KACHIMBA"),
  stage: Stage.find_by(name: "VILLARROBLEDO ARGIMIRO MARTINEZ"),
  start_time: DateTime.new(2025, 5, 3, 1, 5), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 3, 2, 35)  # Next day (overnight)
)

# BABILONIA Stage
Concert.create!(
  group: Group.find_by(name: "EL DUENDE CALLEJERO"),
  stage: Stage.find_by(name: "BABILONIA"),
  start_time: DateTime.new(2025, 5, 1, 17, 45),
  end_time: DateTime.new(2025, 5, 1, 18, 55)
)

Concert.create!(
  group: Group.find_by(name: "LA SRA. TOMASA"),
  stage: Stage.find_by(name: "BABILONIA"),
  start_time: DateTime.new(2025, 5, 1, 20, 20),
  end_time: DateTime.new(2025, 5, 1, 21, 50)
)

Concert.create!(
  group: Group.find_by(name: "GREEN VALLEY"),
  stage: Stage.find_by(name: "BABILONIA"),
  start_time: DateTime.new(2025, 5, 1, 23, 30),
  end_time: DateTime.new(2025, 5, 3, 1, 0) # Next day (overnight)
)

Concert.create!(
  group: Group.find_by(name: "GEA"),
  stage: Stage.find_by(name: "BABILONIA"),
  start_time: DateTime.new(2025, 5, 3, 2, 40), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 3, 3, 40)   # Next day (overnight)
)

Concert.create!(
  group: Group.find_by(name: "PARA MAL O PARA BIEN (Tributo Rosendo)"),
  stage: Stage.find_by(name: "BABILONIA"),
  start_time: DateTime.new(2025, 5, 3, 4, 0), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 3, 5, 0)   # Next day (overnight)
)

# JÄGERMEISTER Stage
Concert.create!(
  group: Group.find_by(name: "BEJO"),
  stage: Stage.find_by(name: "JÄGERMEISTER"),
  start_time: DateTime.new(2025, 5, 1, 16, 30),
  end_time: DateTime.new(2025, 5, 1, 17, 40)
)

Concert.create!(
  group: Group.find_by(name: "LAS NINYAS DEL CORRO"),
  stage: Stage.find_by(name: "JÄGERMEISTER"),
  start_time: DateTime.new(2025, 5, 1, 19, 0),
  end_time: DateTime.new(2025, 5, 1, 20, 15)
)

Concert.create!(
  group: Group.find_by(name: "MALA RODRÍGUEZ"),
  stage: Stage.find_by(name: "JÄGERMEISTER"),
  start_time: DateTime.new(2025, 5, 1, 21, 55),
  end_time: DateTime.new(2025, 5, 1, 23, 25)
)

Concert.create!(
  group: Group.find_by(name: "JARFAITER"),
  stage: Stage.find_by(name: "JÄGERMEISTER"),
  start_time: DateTime.new(2025, 5, 3, 1, 5), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 3, 2, 35)  # Next day (overnight)
)

# CARPA ROCK Stage
Concert.create!(
  group: Group.find_by(name: "CABALLOS SALVAJES"),
  stage: Stage.find_by(name: "CARPA ROCK"),
  start_time: DateTime.new(2025, 5, 1, 16, 30),
  end_time: DateTime.new(2025, 5, 1, 17, 0)
)

Concert.create!(
  group: Group.find_by(name: "BULLYS"),
  stage: Stage.find_by(name: "CARPA ROCK"),
  start_time: DateTime.new(2025, 5, 1, 17, 10),
  end_time: DateTime.new(2025, 5, 1, 17, 40)
)

Concert.create!(
  group: Group.find_by(name: "LA ÉLITE"),
  stage: Stage.find_by(name: "CARPA ROCK"),
  start_time: DateTime.new(2025, 5, 1, 19, 0),
  end_time: DateTime.new(2025, 5, 1, 20, 15)
)

Concert.create!(
  group: Group.find_by(name: "MALAPUTA"),
  stage: Stage.find_by(name: "CARPA ROCK"),
  start_time: DateTime.new(2025, 5, 3, 1, 5), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 3, 2, 35)  # Next day (overnight)
)

# DAY 3 CONCERTS - May 3, 2025
# DAY 3 CONCERTS - May 3, 2025

# NEGRITA Stage
Concert.create!(
  group: Group.find_by(name: "THE TYETS"),
  stage: Stage.find_by(name: "NEGRITA"),
  start_time: DateTime.new(2025, 5, 3, 16, 30),
  end_time: DateTime.new(2025, 5, 3, 17, 35)
)

Concert.create!(
  group: Group.find_by(name: "SONS OF AGUIRRE & SCILA"),
  stage: Stage.find_by(name: "NEGRITA"),
  start_time: DateTime.new(2025, 5, 3, 18, 55),
  end_time: DateTime.new(2025, 5, 3, 20, 10)
)

Concert.create!(
  group: Group.find_by(name: "MÄGO DE OZ"),
  stage: Stage.find_by(name: "NEGRITA"),
  start_time: DateTime.new(2025, 5, 3, 21, 50),
  end_time: DateTime.new(2025, 5, 3, 23, 20)
)

Concert.create!(
  group: Group.find_by(name: "BOIKOT"),
  stage: Stage.find_by(name: "NEGRITA"),
  start_time: DateTime.new(2025, 5, 4, 1, 5), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 4, 2, 35)  # Next day (overnight)
)

Concert.create!(
  group: Group.find_by(name: "DAKIDARRÍA"),
  stage: Stage.find_by(name: "NEGRITA"),
  start_time: DateTime.new(2025, 5, 4, 2, 40), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 4, 3, 55)   # Next day (overnight)
)

# CUTTY SARK Stage
Concert.create!(
  group: Group.find_by(name: "BENITO KAMELAS"),
  stage: Stage.find_by(name: "CUTTY SARK"),
  start_time: DateTime.new(2025, 5, 3, 17, 40),
  end_time: DateTime.new(2025, 5, 3, 18, 50)
)

Concert.create!(
  group: Group.find_by(name: "RULO Y LA CONTRABANDA"),
  stage: Stage.find_by(name: "CUTTY SARK"),
  start_time: DateTime.new(2025, 5, 3, 20, 15),
  end_time: DateTime.new(2025, 5, 3, 21, 45)
)

Concert.create!(
  group: Group.find_by(name: "LA RAÍZ"),
  stage: Stage.find_by(name: "CUTTY SARK"),
  start_time: DateTime.new(2025, 5, 3, 23, 25),
  end_time: DateTime.new(2025, 5, 4, 1, 0) # Next day (overnight)
)

# BABILONIA Stage
Concert.create!(
  group: Group.find_by(name: "BLAKE"),
  stage: Stage.find_by(name: "BABILONIA"),
  start_time: DateTime.new(2025, 5, 3, 17, 45),
  end_time: DateTime.new(2025, 5, 3, 18, 55)
)

Concert.create!(
  group: Group.find_by(name: "AUXILI"),
  stage: Stage.find_by(name: "BABILONIA"),
  start_time: DateTime.new(2025, 5, 3, 20, 20),
  end_time: DateTime.new(2025, 5, 3, 21, 50)
)

Concert.create!(
  group: Group.find_by(name: "NIKONE"),
  stage: Stage.find_by(name: "BABILONIA"),
  start_time: DateTime.new(2025, 5, 3, 23, 30),
  end_time: DateTime.new(2025, 5, 4, 1, 0) # Next day (overnight)
)

Concert.create!(
  group: Group.find_by(name: "PARKINEOS"),
  stage: Stage.find_by(name: "BABILONIA"),
  start_time: DateTime.new(2025, 5, 4, 2, 40), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 4, 3, 40)   # Next day (overnight)
)

Concert.create!(
  group: Group.find_by(name: "BAND IN A MILLION (Tributo Guns N' Roses)"),
  stage: Stage.find_by(name: "BABILONIA"),
  start_time: DateTime.new(2025, 5, 4, 4, 0), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 4, 5, 0)   # Next day (overnight)
)

# VILLARROBLEDO ARGIMIRO MARTINEZ Stage
Concert.create!(
  group: Group.find_by(name: "CICLONAUTAS"),
  stage: Stage.find_by(name: "VILLARROBLEDO ARGIMIRO MARTINEZ"),
  start_time: DateTime.new(2025, 5, 3, 18, 55),
  end_time: DateTime.new(2025, 5, 3, 20, 10)
)

Concert.create!(
  group: Group.find_by(name: "PORRETAS"),
  stage: Stage.find_by(name: "VILLARROBLEDO ARGIMIRO MARTINEZ"),
  start_time: DateTime.new(2025, 5, 3, 21, 50),
  end_time: DateTime.new(2025, 5, 3, 23, 20)
)

Concert.create!(
  group: Group.find_by(name: "LA GRIPE Y TÚ"),
  stage: Stage.find_by(name: "VILLARROBLEDO ARGIMIRO MARTINEZ"),
  start_time: DateTime.new(2025, 5, 4, 1, 5), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 4, 2, 35)  # Next day (overnight)
)

# JÄGERMEISTER Stage
Concert.create!(
  group: Group.find_by(name: "OCER Y RADE"),
  stage: Stage.find_by(name: "JÄGERMEISTER"),
  start_time: DateTime.new(2025, 5, 3, 16, 30),
  end_time: DateTime.new(2025, 5, 3, 17, 40)
)

Concert.create!(
  group: Group.find_by(name: "JUANCHO MARQUÉS"),
  stage: Stage.find_by(name: "JÄGERMEISTER"),
  start_time: DateTime.new(2025, 5, 3, 19, 0),
  end_time: DateTime.new(2025, 5, 3, 20, 15)
)

Concert.create!(
  group: Group.find_by(name: "TOTEKING"),
  stage: Stage.find_by(name: "JÄGERMEISTER"),
  start_time: DateTime.new(2025, 5, 3, 21, 55),
  end_time: DateTime.new(2025, 5, 3, 23, 25)
)

Concert.create!(
  group: Group.find_by(name: "SANTA SALUT"),
  stage: Stage.find_by(name: "JÄGERMEISTER"),
  start_time: DateTime.new(2025, 5, 4, 1, 5), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 4, 2, 35)  # Next day (overnight)
)

# CARPA ROCK Stage
Concert.create!(
  group: Group.find_by(name: "EXPRIMIDOS"),
  stage: Stage.find_by(name: "CARPA ROCK"),
  start_time: DateTime.new(2025, 5, 3, 16, 30),
  end_time: DateTime.new(2025, 5, 3, 17, 0)
)

Concert.create!(
  group: Group.find_by(name: "BLOODY KITCHEN"),
  stage: Stage.find_by(name: "CARPA ROCK"),
  start_time: DateTime.new(2025, 5, 3, 17, 10),
  end_time: DateTime.new(2025, 5, 3, 17, 40)
)

Concert.create!(
  group: Group.find_by(name: "KAMIKAZES"),
  stage: Stage.find_by(name: "CARPA ROCK"),
  start_time: DateTime.new(2025, 5, 3, 19, 0),
  end_time: DateTime.new(2025, 5, 3, 20, 15)
)

Concert.create!(
  group: Group.find_by(name: "FREE CITY"),
  stage: Stage.find_by(name: "CARPA ROCK"),
  start_time: DateTime.new(2025, 5, 3, 21, 55),
  end_time: DateTime.new(2025, 5, 3, 23, 25)
)

Concert.create!(
  group: Group.find_by(name: "LA EXCAVADORA"),
  stage: Stage.find_by(name: "CARPA ROCK"),
  start_time: DateTime.new(2025, 5, 4, 1, 5), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 4, 2, 35)  # Next day (overnight)
)

# DAY 4 CONCERTS - May 4, 2025

# NEGRITA Stage
Concert.create!(
  group: Group.find_by(name: "ME FRITOS AND THE GIMME CHEETOS"),
  stage: Stage.find_by(name: "NEGRITA"),
  start_time: DateTime.new(2025, 5, 4, 16, 30),
  end_time: DateTime.new(2025, 5, 4, 17, 40)
)

Concert.create!(
  group: Group.find_by(name: "EL CANIJO DE JEREZ"),
  stage: Stage.find_by(name: "NEGRITA"),
  start_time: DateTime.new(2025, 5, 4, 19, 0),
  end_time: DateTime.new(2025, 5, 4, 20, 15)
)

Concert.create!(
  group: Group.find_by(name: "LENDAKARIS MUERTOS"),
  stage: Stage.find_by(name: "NEGRITA"),
  start_time: DateTime.new(2025, 5, 4, 21, 55),
  end_time: DateTime.new(2025, 5, 4, 23, 25)
)

Concert.create!(
  group: Group.find_by(name: "TALCO"),
  stage: Stage.find_by(name: "NEGRITA"),
  start_time: DateTime.new(2025, 5, 5, 1, 5), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 5, 2, 35)  # Next day (overnight)
)

# CUTTY SARK Stage
Concert.create!(
  group: Group.find_by(name: "KAOS URBANO"),
  stage: Stage.find_by(name: "CUTTY SARK"),
  start_time: DateTime.new(2025, 5, 4, 17, 45),
  end_time: DateTime.new(2025, 5, 4, 18, 55)
)

Concert.create!(
  group: Group.find_by(name: "KAOTIKO"),
  stage: Stage.find_by(name: "CUTTY SARK"),
  start_time: DateTime.new(2025, 5, 4, 20, 20),
  end_time: DateTime.new(2025, 5, 4, 21, 50)
)

Concert.create!(
  group: Group.find_by(name: "LOS DE MARRAS"),
  stage: Stage.find_by(name: "CUTTY SARK"),
  start_time: DateTime.new(2025, 5, 4, 23, 30),
  end_time: DateTime.new(2025, 5, 5, 1, 0) # Next day (overnight)
)

# VILLARROBLEDO ARGIMIRO MARTINEZ Stage
Concert.create!(
  group: Group.find_by(name: "PORCO BRAVO"),
  stage: Stage.find_by(name: "VILLARROBLEDO ARGIMIRO MARTINEZ"),
  start_time: DateTime.new(2025, 5, 4, 16, 35),
  end_time: DateTime.new(2025, 5, 4, 17, 40)
)

Concert.create!(
  group: Group.find_by(name: "DEF CON DOS"),
  stage: Stage.find_by(name: "VILLARROBLEDO ARGIMIRO MARTINEZ"),
  start_time: DateTime.new(2025, 5, 4, 19, 0),
  end_time: DateTime.new(2025, 5, 4, 20, 15)
)

Concert.create!(
  group: Group.find_by(name: "EL RENO RENARDO"),
  stage: Stage.find_by(name: "VILLARROBLEDO ARGIMIRO MARTINEZ"),
  start_time: DateTime.new(2025, 5, 4, 21, 55),
  end_time: DateTime.new(2025, 5, 4, 23, 25)
)

Concert.create!(
  group: Group.find_by(name: "MAMÁ LADILLA"),
  stage: Stage.find_by(name: "VILLARROBLEDO ARGIMIRO MARTINEZ"),
  start_time: DateTime.new(2025, 5, 5, 1, 5), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 5, 2, 35)  # Next day (overnight)
)

# BABILONIA Stage
Concert.create!(
  group: Group.find_by(name: "SENYOR OCA"),
  stage: Stage.find_by(name: "BABILONIA"),
  start_time: DateTime.new(2025, 5, 4, 17, 45),
  end_time: DateTime.new(2025, 5, 4, 18, 55)
)

Concert.create!(
  group: Group.find_by(name: "KULTO KULTIBO"),
  stage: Stage.find_by(name: "BABILONIA"),
  start_time: DateTime.new(2025, 5, 4, 20, 20),
  end_time: DateTime.new(2025, 5, 4, 21, 50)
)

Concert.create!(
  group: Group.find_by(name: "FIGA FLAWAS"),
  stage: Stage.find_by(name: "BABILONIA"),
  start_time: DateTime.new(2025, 5, 5, 2, 40), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 5, 3, 45)   # Next day (overnight)
)

Concert.create!(
  group: Group.find_by(name: "LA MARMITA"),
  stage: Stage.find_by(name: "BABILONIA"),
  start_time: DateTime.new(2025, 5, 5, 4, 0), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 5, 5, 0)   # Next day (overnight)
)

# JÄGERMEISTER Stage
Concert.create!(
  group: Group.find_by(name: "FAENNA"),
  stage: Stage.find_by(name: "JÄGERMEISTER"),
  start_time: DateTime.new(2025, 5, 4, 16, 30),
  end_time: DateTime.new(2025, 5, 4, 17, 40)
)

Concert.create!(
  group: Group.find_by(name: "MIDAS ALONSO"),
  stage: Stage.find_by(name: "JÄGERMEISTER"),
  start_time: DateTime.new(2025, 5, 4, 19, 0),
  end_time: DateTime.new(2025, 5, 4, 20, 15)
)

Concert.create!(
  group: Group.find_by(name: "ILL PEKEÑO & ERGO PRO"),
  stage: Stage.find_by(name: "JÄGERMEISTER"),
  start_time: DateTime.new(2025, 5, 4, 21, 55),
  end_time: DateTime.new(2025, 5, 4, 23, 25)
)

Concert.create!(
  group: Group.find_by(name: "ISEO & DODOSOUND"),
  stage: Stage.find_by(name: "JÄGERMEISTER"),
  start_time: DateTime.new(2025, 5, 4, 23, 30),
  end_time: DateTime.new(2025, 5, 5, 1, 0) # Next day (overnight)
)

Concert.create!(
  group: Group.find_by(name: "KAZE"),
  stage: Stage.find_by(name: "JÄGERMEISTER"),
  start_time: DateTime.new(2025, 5, 5, 1, 5), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 5, 2, 35)  # Next day (overnight)
)

# CARPA ROCK Stage
Concert.create!(
  group: Group.find_by(name: "LOS PESTUNCIOS"),
  stage: Stage.find_by(name: "CARPA ROCK"),
  start_time: DateTime.new(2025, 5, 4, 16, 30),
  end_time: DateTime.new(2025, 5, 4, 17, 0)
)

Concert.create!(
  group: Group.find_by(name: "GREX"),
  stage: Stage.find_by(name: "CARPA ROCK"),
  start_time: DateTime.new(2025, 5, 4, 17, 10),
  end_time: DateTime.new(2025, 5, 4, 18, 10)
)

Concert.create!(
  group: Group.find_by(name: "LXS NADIE"),
  stage: Stage.find_by(name: "CARPA ROCK"),
  start_time: DateTime.new(2025, 5, 4, 19, 0),
  end_time: DateTime.new(2025, 5, 4, 20, 15)
)

Concert.create!(
  group: Group.find_by(name: "ONZA"),
  stage: Stage.find_by(name: "CARPA ROCK"),
  start_time: DateTime.new(2025, 5, 4, 21, 55),
  end_time: DateTime.new(2025, 5, 4, 23, 25)
)

Concert.create!(
  group: Group.find_by(name: "SÜNE"),
  stage: Stage.find_by(name: "CARPA ROCK"),
  start_time: DateTime.new(2025, 5, 5, 1, 5), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 5, 1, 45)  # Next day (overnight)
)

Concert.create!(
  group: Group.find_by(name: "BIHOTZA"),
  stage: Stage.find_by(name: "CARPA ROCK"),
  start_time: DateTime.new(2025, 5, 5, 2, 0), # Next day (overnight)
  end_time: DateTime.new(2025, 5, 5, 2, 40)  # Next day (overnight)
)
