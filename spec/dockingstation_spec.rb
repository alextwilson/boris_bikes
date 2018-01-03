require "dockingstation"
require "bike"

describe DockingStation do

  describe '#release_bike' do
    it 'returns a bike' do
      docking_station = DockingStation.new

      expect(docking_station.release_bike).to be_instance_of(Bike)
    end

    it 'returns a working bike' do
      docking_station = DockingStation.new
      bike = docking_station.release_bike

      expect(bike.working?).to eq true
    end
  end

end
