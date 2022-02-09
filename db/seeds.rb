puts "Creating star systems.."

StarSystem.create(name: "Proxima Centauri", distance: 4.2, mission_complexity: "Low", habitibility_chance: 35)
StarSystem.create(name: "Tau Ceti", distance: 11.9, mission_complexity: "Moderate", habitibility_chance: 60)
StarSystem.create(name: "Upsilon Andromedae", distance: 4.0, mission_complexity: "High", habitibility_chance: 80)

puts "Systems created!"


puts "Creating demo ship.."

Spaceship.create(spaceship_name: "Pillar of Autumn", credits: 1000000, range: 0, strength: 0)
Spaceship.create(spaceship_name: "Enterprise", credits: 1000000, range: 0, strength: 0)
Spaceship.create(spaceship_name: "Rocinante", credits: 1000000, range: 0, strength: 0)

puts "Demo ship created"


puts "Creating engine parts..."

EnginePart.create(part_name: "Nuclear Reactor", range: 3, cost: 150000)
EnginePart.create(part_name: "Fusion Reactor", range: 7, cost: 250000)
EnginePart.create(part_name: "Antimatter Drive", range: 10, cost: 400000)

puts "Engine parts created"


puts "Creating hull parts.."
HullPart.create(part_name: "Carbon Fiber Plating", hull_strength: 5, cost: 20000)
HullPart.create(part_name: "Graphene Matrix", hull_strength: 15, cost: 90000)
HullPart.create(part_name: "Neutrino Repulsor", hull_strength: 50, cost: 300000)
puts "Hull parts created"
