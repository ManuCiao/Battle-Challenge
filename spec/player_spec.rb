require 'player'

describe Player do
  subject(:player1) {Player.new('Jimmy')}
  subject(:player2) {Player.new('Bob')}

  it "returns the name of the player 1" do
    expect(player1.name).to eq('Jimmy')
  end
  it "returns the name of the player 2" do
    expect(player2.name).to eq('Bob')
  end

  describe '#hit_points' do
    it 'returns the hit_points' do
      expect(player1.hit_points).to eq Player::DEFAULT_POINTS
    end
  end

  describe '#hit' do
    it "reduce the player 2 hit points by 10" do
      expect { player2.hit }.to change { player2.hit_points}.by(-Player::HIT_POINTS)
    end
  end
end
