require File.expand_path(File.dirname(__FILE__) + '/../src/project_euler_9')

describe ProjectEuler9 do
  describe '#find_triplet' do
    it "finds the single pythagorean triplet for a < b < c where {a, b, c} <= 1000" do
      runner = ProjectEuler9.new
      triplet = runner.find_triplet
      triplet[:a].should == 200
      triplet[:b].should == 375
      triplet[:c].should == 425
    end
  end
end