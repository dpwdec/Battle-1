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
end
