defmodule Ex4Test do
  use ExUnit.Case

  test "fruits through pipes!" do
    apple = %{name: "apple", color: :red, shape: :round, weight: :light}
    cashew = %{name: "cashew", color: :yellow, shape: :round, weight: :light}
    pear = %{name: "pear", color: :green, shape: :round, weight: :light}
    watermelon = %{name: "watermelon", color: :green, shape: :round, weight: :heavy}
    banana = %{name: "banana", color: :yellow, shape: :strange, weight: :light}

    basket = [apple, apple, banana, watermelon, apple, banana, cashew, pear]

    remaining_fruits =
      basket
      |> Ex4.eat_fruits_with_color(:red)
      |> Ex4.eat_fruits_with_color(:green)
      |> Ex4.eat_fruits_with_name("watermelon")

    assert remaining_fruits == [banana, banana, cashew]

    remaining_fruits =
      basket
      |> Ex4.eat_fruits_with_shape(:strange)
      |> Ex4.eat_fruits_with_color(:green)
      |> Ex4.eat_fruits_with_name("apple")
      |> Ex4.eat_fruits_with_weight(:heavy)
      |> Ex4.eat_first_fruit()

    assert remaining_fruits == []
  end
end
