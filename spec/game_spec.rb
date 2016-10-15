require 'game'

describe Game do
  subject(:game) { Game.start(player_1, player_2) }
  subject(:finished_game) { described_class.new(player_1, loser_player) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  let(:loser_player) { double(:loser_player, hit_points: 0) }


  it "create an instance of itself" do
    expect(Game.start(player_1, player_2)).to be_an_instance_of(Game)
  end

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
      expect(game.current_turn).to eq(player_2)
    end

    it "switches the target of the array" do
      game.switch_turn
      expect(game.target).to eq(player_1)
    end
  end

  describe '#current_turn' do
    it "returns the first of the array" do
      expect(game.current_turn).to eq(player_1)
    end
  end

  describe '#target' do
    it "returns the last of the array" do
      expect(game.target).to eq(player_2)
    end
  end

  describe '#loser' do
    it 'returns the loser if hit points are 0' do
      finished_game.target
      expect(finished_game.loser).to eq(loser_player)
    end

    it 'does not return the loser if hit points are more than 0' do
      allow(player_2).to receive(:hit_points).and_return(100)
      game.target
      expect(game.loser).to_not eq(player_2)
    end
  end
end
