require "rubygems"
require "rspec"
require File.expand_path(File.dirname(__FILE__) + '/../src/project_euler_25')

describe ProjectEuler25 do
  it "finds the correct solution" do
    ProjectEuler25.solve.should == 4782
  end


end