describe Game do

let (:player_1) { double :player }
let (:player_2) { double :player }

subject {described_class.new(player_1, player_2)}

  describe '#initialize' do
    it 'should have player 1' do
      expect(subject).to have_attributes(player_1: player_1)
    end
    it 'should have player 2' do
     expect(subject).to have_attributes(player_2: player_2)
    end

    describe '#attack' do
      it 'responds to attack' do
        expect(subject).to respond_to(:attack).with(1).arguments
      end
    end
end





end
