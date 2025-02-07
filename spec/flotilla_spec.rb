require './lib/spacecraft'
require './lib/person'
require './lib/flotilla'

RSpec.describe Flotilla do
  it "exists and has attributes" do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

    expect(seventh_flotilla).to be_an_instance_of(Flotilla)
    expect(seventh_flotilla.name).to eq('Seventh Flotilla')
    expect(seventh_flotilla.personnel).to eq([])
    expect(seventh_flotilla.ships).to eq([])
  end

  it "adds ships" do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
    daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

    seventh_flotilla.add_ship(daedalus)

    expect(seventh_flotilla.ships).to eq([daedalus])
  end

  it "adds personnel" do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
    daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
    kathy = Person.new('Kathy Chan', 10)
    polly = Person.new('Polly Parker', 8)
    rover = Person.new('Rover Henriette', 1)
    sampson = Person.new('Sampson Edwards', 7)

    seventh_flotilla.add_personnel(kathy)
    seventh_flotilla.add_personnel(polly)
    seventh_flotilla.add_personnel(rover)
    seventh_flotilla.add_personnel(sampson)

    expect(seventh_flotilla.personnel).to eq([kathy, polly, rover, sampson])
  end

  it "recommends personnel" do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
    daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
    kathy = Person.new('Kathy Chan', 10)
    polly = Person.new('Polly Parker', 8)
    rover = Person.new('Rover Henriette', 1)
    sampson = Person.new('Sampson Edwards', 7)

    expect(seventh_flotilla.recommend_personnel).to eq([kathy, rover])
  end
end
