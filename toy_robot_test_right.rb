require 'minitest/autorun'
require_relative 'toy_robot'

class ToyRobotFacingToRightTest < Minitest::Spec
  subject do
    ToyRobot.new
  end

  it 'test right from north to east' do
    subject.place(0,0,"NORTH")
    subject.right
    expect(subject.report).must_equal "0,0,EAST"
  end

  it 'test right from east to south' do
    subject.place(0,0, "EAST")
    subject.right
    expect(subject.report).must_equal "0,0,SOUTH"
  end

  it 'test right from south to west' do
    subject.place(0,0,"SOUTH")
    subject.right
    expect(subject.report).must_equal "0,0,WEST"
  end

  it 'test right from west to north' do
    subject.place(0,0,"WEST")
    subject.right
    expect(subject.report).must_equal "0,0,NORTH"
  end
end