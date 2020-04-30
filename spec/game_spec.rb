require 'game'

describe Game do

  describe '#attack' do
    it 'makes victim receive damage' do
      attacker = double()
      victim = double()
      expect(victim).to receive(:receive_damage)
      subject.attack(attacker, victim)
    end
  end
end
