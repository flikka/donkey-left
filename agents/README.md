# Agents
In this folder, programs that read images that process the "car" camera that have been stored in a specified place is to be interpreted and send messages to the controller. 

After a while, maybe many can get the pictures, we can have many controllers that send some opinion to someone else. 

But first, just read the picture in the first agent, extract some information (for example some basic colour info), send it to the "align course controller" which can send a steering signal based on some characteristics of the picture in question.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `agents` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:agents, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/agents](https://hexdocs.pm/agents).
