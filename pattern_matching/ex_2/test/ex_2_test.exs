defmodule Ex2Test do
  use ExUnit.Case

  test "maps 1" do
    map = %{
      # ONLY CHANGE THIS LINE
    }

    %{a: a, b: b, c: c} = map
    assert a == "a"
    assert b == "b"
    assert c == "c"
    assert map_size(map) == 5
    assert map.d == "d"

  end

  test "maps 2" do
    map = %{
      # ONLY CHANGE THIS LINE
    }

    %{name: name, dimensions: dimensions} = map
    %{dimensions: [{:width, width}, {:height, height}, {:weight, _weight}]} = map
    assert name == "Fridge"
    assert dimensions[:width] == 80
    assert width == 80
    assert height == 240
    assert map_size(map) == 3
  end
end
