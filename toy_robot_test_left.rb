require 'minitest/autorun'
require_relative 'toy_robot'

class ToyRobotFacingToLeftTest < Minitest::Spec
  subject do
    ToyRobot.new
  end

  it 'test left west to south' do
    subject.place(0,0,'WEST')
    subject.left
    expect(subject.report).must_equal "0,0,SOUTH"
  end

  it 'test left east to north' do
    subject.place(0,0,'EAST')
    subject.left
    expect(subject.report).must_equal "0,0,NORTH"
  end

  it 'test left south to east' do
    subject.place(0,0,'SOUTH')
    subject.left
    expect(subject.report).must_equal "0,0,EAST"
  end

  it 'test left north to west' do
    subject.place(0,0,'NORTH')
    subject.left
    expect(subject.report).must_equal "0,0,WEST"
  end
end