require 'go'

describe Go do
  subject(:go) { described_class.new(options) }
  let(:options) { {"player_name" => "Ernest", "player_tool" => :rock, "computer_tool" => :scissors} }

  describe '#player_name' do
    it 'returns player name' do
      expect(go.player_name).to eq "Ernest"
    end
  end

  describe '#player_tool' do
    it 'returns player tool' do
      expect(go.player_tool).to eq :rock
    end
  end

  describe '#computer_tool' do
    it 'returns computer tool' do
      expect(go.computer_tool).to eq :scissors
    end
  end

  context 'end game' do
    describe '#win?' do
      it 'returns true if player_tool is :rock and computer_tool is :scissors' do
        expect(go.win?).to eq true
      end
    end
  end
end
