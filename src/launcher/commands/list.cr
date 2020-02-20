require "../../launcher"

history_path = get_history_path

history = if File.exists?(history_path)
  File.read(history_path).lines
else
  [] of String
end

paths = ENV["PATH"].split(':')
executables = paths.sum([] of String) do |path|
  unless Dir.exists?(path)
    next [] of String
  end
  Dir.children(path).select do |file|
    absolute_path = File.expand_path(file, path)
    File.file?(absolute_path) && File.executable?(absolute_path)
  end
end

menu = (history.reverse + executables.sort).uniq.join('\n')
puts menu
