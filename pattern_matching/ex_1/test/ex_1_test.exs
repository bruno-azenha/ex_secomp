defmodule Ex1Test do
  use ExUnit.Case

  test "lists 1" do
    list = [
      # ONLY CHANGE THIS LINE
    ]

    [a, [b, c], d] = list

    assert a == :elixir
    assert b == "hello"
    assert c == "world"
    assert d == {"this", "is", "fine."}
  end

  test "lists 2" do
    list = [
      # ONLY CHANGE THIS LINE
    ]

    [h1 | t1] = list
    [h2 | t2] = t1
    [h3 | t3] = t2

    assert h1 == 0
    assert h2 == [1, 2]
    assert h3 == [3, 4, 5]
    assert t3 == []
  end

  test "lists 3" do
    list = [
      # ONLY CHANGE THIS LINE
    ]

    [_, _, [[_, [_, _, [gold]]]]] = list

    assert gold == :gold
  end

  test "lists 4" do
    list = [
      # ONLY CHANGE THIS LINE
    ]

    [a | [b | [c | d]]] = list

    assert a == 10
    assert b == "Hello there!"
    assert c == [[:atom, :atom], [1, 2, 3], :gold]
    assert d == []
  end
end
