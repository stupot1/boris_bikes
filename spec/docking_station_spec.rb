require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
    it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_an_instance_of Bike
  end
  
  describe '#working?' do
    it 'bike is working' do
      bike = subject.release_bike
      expect(bike.working?).to eq(true)
    end  
  end  
end