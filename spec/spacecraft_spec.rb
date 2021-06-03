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
end
