require 'go'

describe Go do
  subject(:go) { described_class.new(options) }
  let(:options) { {"player_name" => "Ernest", "player_tool" => :rock, "game_tool" => :scissors} }

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

  describe '#game_tool' do
    it 'returns game tool' do
      expect(go.game_tool).to eq :scissors
    end
  end

  context 'end game' do
    subject(:win_go) { go }
    subject(:lose_go) { described_class.new(lose_options) }
    subject(:draw_go) { described_class.new(draw_options) }

    let(:lose_options) { {"player_name" => "Ernest", "player_tool" => :rock, "game_tool" => :paper} }
    let(:draw_options) { {"player_name" => "Ernest", "player_tool" => :rock, "game_tool" => :rock} }

    describe '#win?' do
      it 'returns true if player_tool is :rock and game_tool is :scissors' do
        expect(win_go.win?).to eq true
      end
    end

    describe '#lose?' do
      it 'returns true if player_tool is :rock and game_tool is :paper' do
        expect(lose_go.lose?).to eq true
      end
    end

    describe '#draw?' do
      it 'returns true if player_tool is :rock and game_tool is :rock' do
        expect(draw_go.draw?).to eq true
      end
    end
  end
end
