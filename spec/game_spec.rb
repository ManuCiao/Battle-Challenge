require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe '#player_1' do
    it "returns the name of the first player" do
      expect(player_1).to eq(player_1)
    end
  end

  describe '#player_2' do
    it "returns the name of the first player" do
      expect(player_2).to eq(player_2)
    end
  end

  describe '#switch_player' do
    it "returns player 1 switched turn with player 2" do
      game.switch_turn
      expect(game.switch_player).to eq(player_1)
    end
  end
end
