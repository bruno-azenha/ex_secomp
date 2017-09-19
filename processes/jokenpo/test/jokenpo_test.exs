defmodule JokenpoTest do
  use ExUnit.Case

  test "starts" do
    {:ok, pid} = Jokenpo.start()
    assert is_pid(pid)
  end

  test "rock vs scissor" do
    {:ok, pid} = Jokenpo.start()

    :ok = Jokenpo.set_p1(pid, :rock)
    :ok = Jokenpo.set_p2(pid, :scissor)
    {:ok, result} = Jokenpo.play(pid)

    assert result == "P1 wins"
  end

  test "many games" do
    {:ok, pid} = Jokenpo.start()

    :ok = Jokenpo.set_p1(pid, :rock)
    :ok = Jokenpo.set_p2(pid, :rock)
    {:ok, result} = Jokenpo.play(pid)

    assert result == "DRAW"

    :ok = Jokenpo.set_p1(pid, :paper)
    :ok = Jokenpo.set_p2(pid, :rock)
    {:ok, result} = Jokenpo.play(pid)

    assert result == "P1 wins"
  end
end
