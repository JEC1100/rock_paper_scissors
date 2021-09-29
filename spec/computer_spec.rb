require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe "#tool" do
    it 'returns a random tool' do
      expect([:rock, :paper, :scissors]).to include computer.tool
    end
  end
end