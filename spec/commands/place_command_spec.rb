require 'spec_helper'
require './commands/place_command'
require './table'
require './robot'
require './position'

describe PlaceCommand do
  subject { PlaceCommand.new(robot, table, position) }

  describe '#execute' do
    let(:robot) { Robot.new }
    let(:table) { Table.new }

    context 'when position is valid' do
      let(:position) { Position.new(0, 0, 'NORTH') }
      it 'places the robot' do
        subject.execute

        expect(robot.current_location).to eq position
      end
    end

    context 'when position is invalid' do
      let(:position) { Position.new(7, -1, 'NORTH') }

      it 'does not places the robot' do
        subject.execute

        expect(robot.current_location).to eq nil
        expect(robot.report_current_location).to eq 'robot is not placed correctly'
      end
    end
  end
end
