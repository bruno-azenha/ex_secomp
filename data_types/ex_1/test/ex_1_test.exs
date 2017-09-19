defmodule Ex1Test do
  use ExUnit.Case

  test "is that the right type?" do
    # make the variables be of the right type
    atom = :atom
    integer = 123
    float = 1.23
    number = 123
    string = "This is a string"
    tuple = {"Hello", 123, [], :atom}
    list = ["List", 123, [], :atom]
    map = %{:k1 => "value1", "k2" => "value2", "k3" => 123}
    boolean = true

    # Don't change the lines below
    assert is_atom(atom)
    assert is_integer(integer)
    assert is_float(float)
    assert is_number(number)
    assert is_bitstring(string)
    assert is_tuple(tuple)
    assert is_list(list)
    assert is_map(map)
    assert is_boolean(boolean)
  end
  
end
