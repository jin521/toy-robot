require 'spec_helper'
require './commands/left_command'
require './robot'
require './position'

describe LeftCommand do
  subject { LeftCommand.new(robot) }

  let(:robot) { Robot.new }
  let(:position) { Position.new(0, 3, direction) }

  before { robot.current_location = position }

  describe '#execute' do
    context 'robot is initially facing NORTH' do
      let(:direction) { 'NORTH' }

      it 'rotate the robot 90 degree to left' do
        subject.execute

        expect(robot.current_location.direction).to eq 'WEST'
      end
    end

    context 'robot is initially facing EAST' do
      let(:direction) { 'EAST' }

      it 'rotate the robot 90 degree to left' do
        subject.execute

        expect(robot.current_location.direction).to eq 'NORTH'
      end
    end

    context 'robot is initially facing SOUTH' do
      let(:direction) { 'SOUTH' }

      it 'rotate the robot 90 degree to left' do
        subject.execute

        expect(robot.current_location.direction).to eq 'EAST'
      end
    end

    context 'robot is initially facing WEST' do
      let(:direction) { 'WEST' }

      it 'rotate the robot 90 degree to left' do
        subject.execute

        expect(robot.current_location.direction).to eq 'SOUTH'
      end
    end
  end
end
