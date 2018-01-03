require "dockingstation"
require "bike"

describe DockingStation do
  subject(:docking_station) {DockingStation.new}
  subject(:bike) {docking_station.release_bike}

  describe '#release_bike' do
    it 'returns a bike' do
      expect(docking_station.release_bike).to be_instance_of(Bike)
    end

    it 'returns a working bike' do
      expect(bike.working?).to eq true
    end
  end

end
