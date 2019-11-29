defmodule AgentsTest do
  use ExUnit.Case
  doctest Agents

  test "greets the world" do
    assert Agents.hello() == :world
  end
end
