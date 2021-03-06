require 'colorize'

class Turn

  attr_reader :guess, :card

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    if @guess == @card.answer
      true
    else
      false
    end
  end

  def feedback
    if correct?
      "Correct!".green
    else
      "Incorrect.".red
    end
  end
end
