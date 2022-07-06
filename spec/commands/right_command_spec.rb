require 'spec_helper'
require './commands/right_command'
require './robot'
require './position'

describe RightCommand do
  subject { RightCommand.new(robot) }

  let(:robot) { Robot.new }
  let(:position) { Position.new(0, 3, direction) }

  before { robot.current_location = position }

  describe '#execute' do
    context 'robot is initially facing NORTH' do
      let(:direction) { 'NORTH' }

      it 'rotate the robot 90 degree to right' do
        subject.execute
  
        expect(robot.current_location.direction).to eq 'EAST'
      end 
    end

    context 'robot is initially facing EAST' do
      let(:direction) { 'EAST' }

      it 'rotate the robot 90 degree to right' do
        subject.execute
  
        expect(robot.current_location.direction).to eq 'SOUTH'
      end 
    end

    context 'robot is initially facing SOUTH' do
      let(:direction) { 'SOUTH' }

      it 'rotate the robot 90 degree to right' do
        subject.execute
  
        expect(robot.current_location.direction).to eq 'WEST'
      end 
    end

    context 'robot is initially facing WEST' do
      let(:direction) { 'WEST' }

      it 'rotate the robot 90 degree to right' do
        subject.execute
  
        expect(robot.current_location.direction).to eq 'NORTH'
      end 
    end

  end
end