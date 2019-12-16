defmodule AgentsTest do
  use ExUnit.Case
  doctest Agents

  test "Agent can read" do
    assert Agents.read() == :readok
  end
end
