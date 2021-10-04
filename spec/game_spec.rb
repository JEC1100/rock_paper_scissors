require 'game'

describe Game do
  subject(:game) { described_class.new }

  describe "#tool" do
    it 'returns a random tool' do
      expect(Game::TOOLS).to include game.tool
    end
  end
end
