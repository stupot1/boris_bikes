require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  describe '#release_bikes' do
    xit 'releases working bikes' do
      bike = subject.release_bike
      expect(bike).to be_an_instance_of Bike
    end
    it "doesn't release a bike if there are no bikes and raise error" do
      expect {subject.release_bike}.to raise_error("no bike available")
    end
  end
  
  describe '#working?' do
    xit 'bike is working' do
      bike = subject.release_bike
      expect(bike.working?).to eq(true)
    end  
  end

  describe '#dock_bike' do
    it 'docks working bike' do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq('bike is docked')  
    end
  end
  
  describe '@bikes' do
    it 'sees what bikes are docked' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bikes[0]).to eq(bike)
    end  
  end




end