class Card
  attr_reader :side1, :side2
  attr_accessor :known
  def initialize(args = {})
    @side1 = args[:side1]
    @side2 = args[:side2]
    @known = convert_bool(args[:known])
  end

  def check_answer(input)
    self.known = true if input == side2
  end

  def answered
    if known == true
      "Your answer is correct."
     else
      "Sorry Keep on studying."
    end
  end

  private
  def convert_bool(input)
    input == "true" ? true : false
  end

end
