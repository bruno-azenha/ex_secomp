defmodule Ex1Test do
  use ExUnit.Case

  test "create sum, sub and mul anonymous functions" do
    sum =
    sub =
    mul =

    # Don't change the lines below
    assert sum.(1, 2) == 3
    assert sub.(1, 2) == -1
    assert mul.(5, 6) == 30
  end

  test "create div anonymous function" do
    div =

    # Don't change the lines below
    assert div.(30, 6) == 5
    assert div.(30, 0) == :error
  end

  test "create apply anonymous function" do
    sum =
    sub =
    mul =
    div =

    apply =

    # Don't change the lines below
    assert apply.(sum, 1, 4) == 5
    assert apply.(sum, 1, 9) == 10
    assert apply.(sub, 5, 5) == 0
    assert apply.(sub, 5, 0) == 5
    assert apply.(div, 10, 1) == 10
    assert apply.(div, 10, 0) == :error
    assert apply.(mul, 10, 5) == 50
    assert apply.(mul, 10, 2.5) == 25
  end
end
