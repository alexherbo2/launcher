require "../../launcher"

command = ARGV[0]

File.open(get_history_path, "a") do |file|
  file.puts command
end

fork do
  Process.run(command)
end
