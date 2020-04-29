require 'player'

describe Player do
  describe '.name' do
    it "expects to return name" do 
      expect(Player.new('John').name).to eq "John"
    end
  end
end