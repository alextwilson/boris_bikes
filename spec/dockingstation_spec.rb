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

  describe '#dock' do

    it 'stores bike' do
      docking_station.dock(bike)
      expect(docking_station.stored).to eq bike
    end

  end

  describe '#check_storage' do

    it 'checks a bike is in storage' do
      docking_station.dock(bike)
      expect(docking_station.check_storage).to be_instance_of(Bike)
    end

  end

end
