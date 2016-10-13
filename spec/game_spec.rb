require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_1) { instance_double("Player") }
  let(:player_2) { instance_double("Player") }


  describe '#attack' do
    it { is_expected.to respond_to (:attack) }

    it "returns player2 has been hit" do
      expect(player_2).to receive(:hit)
      game.attack(player_2)
    end
  end
end
