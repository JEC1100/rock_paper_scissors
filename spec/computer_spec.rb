require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe "#tool" do
    it 'returns a random tool' do
      expect(Computer::TOOLS).to include computer.tool
    end
  end
end