defmodule Jokenpo do

  def start do
    pid = spawn(Jokenpo, :loop, [%{p1: nil, p2: nil}])
    {:ok, pid}
  end

  def loop(state) do
    state = receive do
      state = receive do
        {from, :p1, choice} ->
          send(from, :ok)
          Map.put(state, :p1, choice)
        {from, :p2, choice} ->
          send(from, :ok)
          Map.put(state, :p2, choice)
        {from, :play} ->
          send(from, play(state))
          state
      end
      loop(state)
    end
    loop(state)
  end

  def set_p1(server_pid, choice) when choice in [:rock, :scissor, :paper] do
    send(server_pid, {self(), :p1, choice})
    receive do
      :ok -> :ok
    end
  end

  def set_p2(server_pid, choice) when choice in [:rock, :scissor, :paper] do
    send(server_pid, {self(), :p2, choice})
    receive do
      :ok -> :ok
    end
  end

  def play(server_pid) when is_pid(server_pid) do
    send(server_pid, {self(), :play})
    receive do
      msg -> msg
    end
  end

  def play(%{p1: nil, p2: nil}), do: {:error, "P1 and P2 didn't chose"}
  def play(%{p1: nil}), do: {:error, "P1 didn't chose"}
  def play(%{p2: nil}), do: {:error, "P2 didn't chose"}
  def play(%{p1: :scissor, p2: :rock}), do: {:ok, "P2 wins"}
  def play(%{p1: :paper, p2: :scissor}), do: {:ok, "P2 wins"}
  def play(%{p1: :rock, p2: :paper}), do: {:ok, "P2 wins"}
  def play(%{p1: :scissor, p2: :paper}), do: {:ok, "P1 wins"}
  def play(%{p1: :paper, p2: :rock}), do: {:ok, "P1 wins"}
  def play(%{p1: :rock, p2: :scissor}), do: {:ok, "P1 wins"}
  def play(%{p1: choice, p2: choice}), do: {:ok, "DRAW"}

end
