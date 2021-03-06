require "dockingstation"
require "bike"

describe DockingStation do
  subject(:docking_station) {DockingStation.new}
  subject(:bike) {docking_station.release_bike}

  it 'has a default capacity of 20' do
    station = DockingStation.new
    expect(station.capacity).to eq 20
  end

  it 'sets capacity as an argument' do
    station = DockingStation.new(25)
    expect(station.capacity).to eq 25
  end

  describe '#release_bike' do

    it 'returns a bike' do
      docking_station.dock(Bike.new)
      expect(bike).to be_instance_of(Bike)
    end

    it 'returns a working bike' do
      docking_station.dock(Bike.new)
      expect(bike.working?).to eq true
    end

    it 'returns error when storage is empty' do
      expect { docking_station.release_bike }.to raise_error("There are no bikes")
    end

  end

  describe '#dock' do

    it 'stores bike' do
      bicycle = Bike.new
      docking_station.dock(bicycle)
      expect(docking_station.stored[-1]).to eq bicycle
    end

    it 'returns a storage full error when storage is not empty' do
      DockingStation::DEFAULT_CAPACITY.times { docking_station.dock(Bike.new) }
      expect { docking_station.dock(Bike.new) }.to raise_error("Storage is full")
    end

    it 'reports a broken bike' do
      bike = Bike.new
      docking_station.dock(bike, 'broken')
      expect(bike.working?).to eq false
    end

    it 'checks report worked in storage' do
      bike = Bike.new
      docking_station.dock(bike, 'broken')
      expect(docking_station.check_storage.working?).to eq false
    end

  end

  describe '#check_storage' do

    it 'checks a bike is in storage' do
      docking_station.dock(Bike.new)
      expect(docking_station.check_storage).to be_instance_of(Bike)
    end

  end

end
