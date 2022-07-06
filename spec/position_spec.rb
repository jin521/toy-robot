require 'spec_helper'
require './robot'
require './position'

describe Position do
  let(:position) { Position.new(0, 1, 'NORTH') }

  describe '#initialize' do
    it 'initialize with x postion, y position and direction' do
      expect(position.x_position).to eq 0
      expect(position.y_position).to eq 1
      expect(position.direction).to eq 'NORTH'
    end
  end
end
