describe Game do

let (:player_1) { double :player }
let (:player_2) { double :player }

  describe '#attack' do
    it 'should let one player attack another' do
      game = Game.new
      allow(player_2).to receive(:reduce_hp)
      game.attack(player_2)
    end
  end

end
