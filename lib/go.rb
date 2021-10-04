class Go

  RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}

  }

  attr_reader :player_name, :player_tool, :game_tool
  
  def initialize(options)
    @player_name = options["player_name"]
    @player_tool = options["player_tool"]
    @game_tool = options["game_tool"]
  end

  def win?
    result == :win
  end

  def lose?
    result == :lose
  end

  def draw?
    result == :draw
  end

  private

  def result
    return if @game_tool.nil?
    RULES[@player_tool][@game_tool]
  end

end
