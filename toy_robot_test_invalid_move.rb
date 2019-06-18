require 'minitest/autorun'
require_relative 'toy_robot'

class ToyRobotMoveInvalidTest < Minitest::Spec

  subject do
    ToyRobot.new
  end

  it 'test invalid move west' do
    subject.place(0,0,'NORTH')
    subject.left
    subject.move
    expect(subject.report).must_equal "0,0,WEST"
  end

  it 'test invalid move south' do
    subject.place(0,0,'EAST')
    subject.right
    subject.move
    expect(subject.report).must_equal "0,0,SOUTH"
  end

  it 'test invalid with over grid' do
    subject.place(5,5,"NORTH")
    expect(subject.report).must_equal "Not placed"
  end

  it 'test invalid with x,y minus' do
    subject.place(-1,-3,'NORTH')
    expect(subject.report).must_equal "Not placed"
  end

  it 'test invalid facing' do
    subject.place(1,2,'HELLO')
    expect(subject.report).must_equal "Not placed"
  end
end
