defmodule Commandline.CLI do
  def main(args) do
    Logger.configure(level: :info)
    options = [strict: [folder: :string, help: :boolean], aliases: [f: :folder, h: :help]]
    {opts, _, _} = OptionParser.parse(args, options)
    IO.inspect(opts, label: "Command Line Arguments")

    if opts[:help] do
      IO.puts "Specify input folder with the 'folder' (-f) option"
    else
      Agents.read(opts[:folder])
    end
  end
end
