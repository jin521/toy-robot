require 'spec_helper'
require './commands/move_command'
require './table'
require './robot'
require './position'

describe MoveCommand do
  subject { MoveCommand.new(robot, table) }

  let(:robot) { Robot.new }
  let(:table) { Table.new }

  before { robot.current_location = position }

  describe '#execute' do
    context 'when new position is valid' do
      let(:position) { Position.new(0, 2, 'NORTH') }

      it 'places the robot to the new position' do
        subject.execute

        expect(robot.current_location.x_position).to eq 0
        expect(robot.current_location.y_position).to eq 3
        expect(robot.current_location.direction).to eq 'NORTH'
      end
    end

    context 'when new position is invalid' do
      let(:position) { Position.new(0, 5, 'NORTH') }

      it 'does not places the robot to the new position' do
        subject.execute

        expect(robot.current_location).to eq position
      end
    end
  end
end
