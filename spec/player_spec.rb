require 'player'

describe Player do
  subject(:charlotte) { Player.new('Charlotte') }

  describe '#name' do
    it 'returns name when called' do
      expect(charlotte.name).to eq 'Charlotte'
    end
  end
end
