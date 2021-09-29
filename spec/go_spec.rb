require 'go'

describe Go do
  subject(:go) { described_class.new(options) }
  let(:options) { {"player_name" => "Ernest", "player_tool" => :rock, "computer_tool" => :rock} }

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
      expect(go.computer_tool).to eq :rock
    end
  end
end
