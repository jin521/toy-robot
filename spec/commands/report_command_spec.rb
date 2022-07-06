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
    it 'prints report to stdout' do
      expect{ subject.execute }.to output("0,3,NORTH\n").to_stdout
    end
  end
end
