require 'player'

describe Player do
  describe '#name' do
    it 'says its name' do
      person = Player.new("Kate")
      expect(person.name).to eq ("Kate")
    end
  end

end
