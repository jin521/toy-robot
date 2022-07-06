require 'spec_helper'
require './robot'
require './position'

describe Robot do
  let(:robot) { Robot.new }

  describe '#initialize' do
    it 'initialize with no current location' do
      expect(robot.current_location).to be_nil
    end
  end

  describe '#report_current_location' do
    let(:position) { Position.new(0, 0, 'NORTH') }

    it 'prints out current location' do
      robot.current_location = position
      expect(robot.report_current_location).to eq '0,0,NORTH'
    end
  end
end
