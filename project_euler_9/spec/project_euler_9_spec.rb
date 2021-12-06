require File.expand_path(File.dirname(__FILE__) + '/../src/project_euler_9')

describe ProjectEuler9 do
  describe '#find_triplet' do

    let(:runner) { ProjectEuler9.new }

    it "finds the single pythagorean triplet for a < b < c where {a, b, c} <= 1000" do
      triplet = runner.find_triplet
      triplet[:a].should == 200
      triplet[:b].should == 375
      triplet[:c].should == 425
    end

    it "does not raise an error" do
      expect {
        runner.find_triplet
      }.not_to raise_error
    end
  end
end
