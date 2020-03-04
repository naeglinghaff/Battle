require 'player'

describe Player do
  let(:player) {Player.new("Kate")}
  describe '#name' do
    it 'says its name' do
      expect(player.name).to eq ("Kate")
    end
  end

  describe '#hp' do
    it 'returns hp' do
      expect(player.hp).to eq Player::DEFAULT_HP
    end
  end

  describe '#reduce_hp' do
    it 'takes 10 away from hp' do
      expect(player.reduce_hp).to eq 40
    end
  end

end
