defmodule Agents do
  @moduledoc """
  Documentation for Agents.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Agents.read()
      :readok

  """
  def read(folder) do
    IO.puts "Hola, I am da great image reader, reading from folder: " <> folder
    {:ok, folder_content} = File.ls(folder)
    pngs = Enum.filter(folder_content, fn x -> Path.extname(x) == ".png" end)
    sorted_pngs = Enum.sort(pngs)
    IO.puts "The sorted PNGs are:"
    IO.puts Enum.join(sorted_pngs,"\n")
    imgs = Enum.map(sorted_pngs, fn x -> Imagineer.load(Path.join([folder, x])) end)


    :readok
  end
end
