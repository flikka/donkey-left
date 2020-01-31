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
    IO.puts "The newest png is #{List.last(sorted_pngs)}"
    IO.puts "The oldest png is #{List.first(sorted_pngs)}"

    imgs = Enum.map(sorted_pngs, fn x -> Imagineer.load(Path.join([folder, x])) end)

    png_dict = Enum.into(Enum.zip(sorted_pngs, imgs), %{})

    {:ok, newest_img} = png_dict[List.first(sorted_pngs)]

    IO.puts "Length first dim #{length(newest_img.pixels)}"
    IO.puts "Length second dim #{length(Enum.at(newest_img.pixels, 0))}"

    # Now, send an image out to a process?
    :readok
  end
end
