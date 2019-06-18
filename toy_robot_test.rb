require 'minitest/autorun'
require_relative 'toy_robot'
require_relative 'toy_robot_test_invalid_move'
require_relative 'toy_robot_test_right'
require_relative 'toy_robot_test_left'

class ToyRobotTest < Minitest::Spec
  subject do
   robot = ToyRobot.new
  end

  it "reports" do
    subject.place(0,0,'NORTH')
    expect(subject.report).must_equal "0,0,NORTH"
  end

  it "tests example A" do
    subject.place(0,0,'NORTH')
    subject.move
    expect(subject.report).must_equal "0,1,NORTH"
  end

  it "test example B" do
    subject.place(0,0,'NORTH')
    subject.left
    expect(subject.report).must_equal "0,0,WEST"
  end

  it "test example C" do
   subject.place(1,2,'EAST')
   subject.move
   subject.move
   subject.left
   subject.move
   expect(subject.report).must_equal "3,3,NORTH"
  end
end