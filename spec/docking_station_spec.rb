require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  #it { is_expected.to be_instance_of bike}
  
  it expect(:release_bike).to receive(:new)
end