puts 'Creating star systems..'
StarSystem.create(name: 'Proxima Centauri', distance: 4, mission_complexity: 'Low', habitibility_chance: 35,
                  shields_required: 50)
StarSystem.create(name: 'Tau Ceti', distance: 12, mission_complexity: 'Moderate', habitibility_chance: 60,
                  shields_required: 80)
StarSystem.create(name: 'Upsilon Andromedae', distance: 44, mission_complexity: 'High', habitibility_chance: 80,
                  shields_required: 120)
puts 'Systems created!'

puts 'Creating demo ship..'
Spaceship.create(spaceship_name: 'Pillar of Autumn', credits: 1_000_000, range: 0, strength: 0, nuclearCount: 0,
                 fusionCount: 0, antimatterCount: 0, carbonCount: 0, grapheneCount: 0, neutronCount: 0)
Spaceship.create(spaceship_name: 'Enterprise', credits: 1_000_000, range: 0, strength: 0, nuclearCount: 0,
                 fusionCount: 0, antimatterCount: 0, carbonCount: 0, grapheneCount: 0, neutronCount: 0)
Spaceship.create(spaceship_name: 'Rocinante', credits: 1_000_000, range: 0, strength: 0, nuclearCount: 0, fusionCount: 0,
                 antimatterCount: 0, carbonCount: 0, grapheneCount: 0, neutronCount: 0)
puts 'Demo ship created'

puts 'Creating engine parts...'
EnginePart.create(part_name: 'Nuclear Reactor', range: 3, cost: 150_000)
EnginePart.create(part_name: 'Fusion Reactor', range: 7, cost: 250_000)
EnginePart.create(part_name: 'Antimatter Drive', range: 10, cost: 400_000)
puts 'Engine parts created'

puts 'Creating hull parts..'
HullPart.create(part_name: 'Carbon Fiber', hull_strength: 5, cost: 20_000)
HullPart.create(part_name: 'Graphene Matrix', hull_strength: 15, cost: 90_000)
HullPart.create(part_name: 'Neutron Repulsor', hull_strength: 50, cost: 300_000)
puts 'Hull parts created'
