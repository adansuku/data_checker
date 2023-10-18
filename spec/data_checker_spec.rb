# spec/data_checker.rb
require 'data_checker'

RSpec.describe DataChecker do
  describe '#valid?' do
    context 'with a valid DNI' do
      it 'returns true' do
        expect(DataChecker.valid?('12345678Z')).to be(true)
      end
    end

    context 'with an invalid DNI' do
      it 'returns false' do
        expect(DataChecker.valid?('invalid_dni')).to be(false)
      end
    end
  end
end
