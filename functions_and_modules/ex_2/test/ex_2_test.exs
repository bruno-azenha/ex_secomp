defmodule Ex2Test do
  use ExUnit.Case

  test "say hello" do

    # Don't change the lines below
    assert Ex2.say_hello("Bruno") == "Hello, Bruno!"
    assert Ex2.say_hello("André") == "Hello, André!"
    assert Ex2.say_hello(:this_is_not_even_a_string) == "Humm... Hello atom?"
    assert Ex2.say_hello(123) == "Humm... Hello number?"
  end
end
