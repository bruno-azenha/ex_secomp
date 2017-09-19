defmodule Upcaser do

  def start do
    pid = spawn(Upcaser, :loop, [])
    {:ok, pid}
  end

  def loop do
    receive do
      {from, {:upcase, str}} -> send(from, {:ok, String.upcase(str)})
    end
    loop()
  end

  def upcase(server_pid, str) do
    send(server_pid, {self(), {:upcase, str}})
    receive do
      {:ok, str} -> {:ok, str}
    end
  end
end
