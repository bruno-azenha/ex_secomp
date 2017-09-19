defmodule Ex3Test do
  use ExUnit.Case
  doctest Ex3

  test "play jokenpô" do

    # Don't change the code below
    assert Ex3.match(:sizzor, :sizzor) == "It's a Draw!"
    assert Ex3.match(:paper, :sizzor) == "Player 2 wins!"
    assert Ex3.match(:rock, :sizzor) == "Player 1 wins!"
    assert Ex3.match(:paper, :rock) == "Player 1 wins!"
  end
end
