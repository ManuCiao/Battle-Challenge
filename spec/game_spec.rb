require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_1) { instance_double("Player") }
  let(:player_2) { instance_double("Player") }

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
end
