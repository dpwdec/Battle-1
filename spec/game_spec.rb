require 'game'

describe Game do


  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }

  describe "#player_1" do
    it "returns first player" do
      expect(game.player_1).to eq player_1
    end
  end

  describe "#player_2" do
    it "returns second player" do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#current_player' do
    it 'returns player 1 as the current player' do
      expect(game.current_player).to eq player_1
    end
  end

  describe '#attack' do
    it 'makes victim receive damage' do
      expect(player_2).to receive(:receive_damage)
      subject.attack
    end
  end

  describe '#switch_player' do
    it 'switches to player_2' do
      game.switch_player
      expect(game.current_player).to eq player_2
    end
  end
end
