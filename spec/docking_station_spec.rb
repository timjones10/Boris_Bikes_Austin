require "docking_station"

describe DockingStation do

  describe "#bikes" do
    it 'responds to the method "bikes"' do
      expect(subject).to respond_to :bikes
    end

    it "shoudl have and emoty bikes array" do
      expect(subject).to have_attributes(:bikes => [])
    end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bikes).to be_a Array
    end

  end

  describe "#release_bike" do
    context "given the method 'release bike'"
      it 'responds to the method "release_bike"' do
        expect(subject).to respond_to :release_bike
      end

      it 'fails if there is no bike to be released' do
        ds = DockingStation.new
        expect { ds.release_bike }.to raise_error
      end

      it 'fails if the dockingstation is empty?' do
      ds = DockingStation.new
      expect { ds.release_bike }.to raise_error
    end
  end



  describe "#dock_bike" do
    it "the dock_bike method should receive one argument" do
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end

    it 'docks something' do
        bike = Bike.new
      expect(subject.dock_bike(bike)).to be_a Array
    end

    it ' raises an error when full' do
      20.times {subject.dock_bike Bike.new }
      expect {subject.dock_bike Bike.new }.to raise_error "Docking station full"

    end
  end

end
