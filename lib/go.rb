class Go
  attr_reader :player_name, :player_tool, :computer_tool
  
  def initialize(options)
    @player_name = options["player_name"]
    @player_tool = options["player_tool"]
    @computer_tool = options["computer_tool"]
  end

end
