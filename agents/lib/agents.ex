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
    IO.puts "The PNGs are:"
    IO.puts Enum.join(pngs,"\n")
    imgs = Enum.map(pngs, fn x -> Imagineer.load(Path.join([folder, x])) end)
    {:ok, img} = Enum.at(imgs, 0)

    IO.puts img["bit_depth"]
    :readok
  end
end
