require 'spec_helper'
require './commands/report_command'
require './robot'
require './position'

describe ReportCommand do
  subject { ReportCommand.new(robot) }

  let(:robot) { Robot.new }
  let(:position) { Position.new(0, 3, 'NORTH') }

  before { robot.current_location = position }

  describe '#execute' do
    it 'reports current location' do
      expect(subject.execute).to eq '0,3,NORTH'
    end 
  end
end