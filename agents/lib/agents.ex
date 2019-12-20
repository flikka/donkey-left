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
    sorted_pngs = Enum.sort(pngs)
    IO.puts "The sorted PNGs are:"
    IO.puts Enum.join(sorted_pngs,"\n")
    imgs = Enum.map(pngs, fn x -> Imagineer.load(Path.join([folder, x])) end)

    file_stats = Enum.map(pngs, fn x -> File.stat(Path.join([folder, x]), time: :posix) end)
    {:ok, stat0} = Enum.at(file_stats, 0)
    {:ok, statn} = Enum.at(file_stats, -1)
    IO.puts "Stats for first file"
    IO.puts stat0.mtime
    IO.puts "Stats for last file"
    IO.puts statn.mtime

    :readok
  end
end
