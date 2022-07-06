require 'spec_helper'
require './position'
require './Table'

describe Table do
  describe '#initialize' do
    context 'when not specifying length and width' do
      let(:table) { Table.new }

      it 'initialize with default length and width' do
        expect(table.length).to eq 5
        expect(table.width).to eq 5
      end
    end

    context 'when not specifying length and width' do
      let(:table) { Table.new(8, 6) }

      it 'initialize with default length and width' do
        expect(table.length).to eq 8
        expect(table.width).to eq 6
      end
    end
  end

  describe '#position_valid?' do
    context 'when position is valid' do
      let(:table) { Table.new }
      let(:position) { Position.new(0, 0, 'NORTH') }

      it 'returns true' do
        valid = table.position_valid?(position)
        expect(valid).to be true
      end
    end

    context 'when position is invalid' do
      let(:table) { Table.new }
      let(:position) { Position.new(8, -1, 'NORTH') }

      it 'returns true' do
        valid = table.position_valid?(position)
        expect(valid).to be false
      end
    end
  end
end
