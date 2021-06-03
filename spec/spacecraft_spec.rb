require './lib/spacecraft'
require './lib/person'

RSpec.describe Spacecraft do
  it "exists and has attributes" do
    daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

    expect(daedalus).to be_an_instance_of(Spacecraft)
    expect(daedalus.name).to eq('Daedalus')
    expect(daedalus.fuel).to eq(400)
    expect(daedalus.requirements).to eq([])
  end

  it "adds requirements" do
    daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

    daedalus.add_requirement({astrophysics: 6})
    daedalus.add_requirement({quantum_mechanics: 3})

    expect(daedalus.requirements).to eq([{astrophysics: 6}, {quantum_mechanics: 3}])

  end
end
