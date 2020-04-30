require 'player'

describe Player do
  describe '.name' do
    it "expects to return name" do
      expect(Player.new('John').name).to eq "John"
    end
  end

  it "has starting hitpoints" do
    expect(Player.new("John").hitpoints).to eq 50
  end

  describe '#attack' do
    it "calls receive_damage on a player" do
      subject = described_class.new('John')
      enemy_player = double()
      expect(enemy_player).to receive(:receive_damage)
      subject.attack(enemy_player)
    end
  end

  describe '#receive_damage' do
    it 'reduces player hitpoints by 10' do
      subject = described_class.new('John')
      expect { subject.receive_damage }.to change { subject.hitpoints }.by(-10)
    end
  end
end
