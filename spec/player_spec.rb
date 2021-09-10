require 'player'

describe Player do
  subject(:player1) { Player.new('player1') }
  subject(:player2) { Player.new('player2') }

  describe '#name' do
    it 'returns name when called' do
      expect(player1.name).to eq 'player1'
    end
  end

  describe '#hitpoints' do
    it 'returns current hitpoints' do
      expect(player1.hitpoints).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      player1.attack(player2)
    end
  end

  describe '#receive_damage' do
    it 'reduces player hitpoints' do
      expect { player1.receive_damage }.to change { player1.hitpoints }.by(-10)
    end
  end
end
