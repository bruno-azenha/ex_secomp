defmodule Ex1Test do
  use ExUnit.Case

  test "is that the right type v2?" do
    # make the variables be of the right type
    function = fn(a, b) -> a + b end
    pid = Process.spawn(fn -> IO.inspect("ok") end, [])
    port = Port.open({:spawn, "hello"}, [:binary])
    reference = make_ref()

    # Don't change the lines below
    assert is_function(function)
    assert is_pid(pid)
    assert is_port(port)
    assert is_reference(reference)
  end
end
