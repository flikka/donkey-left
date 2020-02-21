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
    newest_file = List.last(sorted_pngs)
    IO.puts "The newest png is #{newest_file}"

    {:ok, png} = Imagineer.load(Path.join([folder, newest_file]))




    # Now, send an image out to a process?
    :readok
  end

  def process(png) do
    IO.puts "Image dimension: #{length(png.pixels)} X #{length(List.first(png.pixels))}"
end
