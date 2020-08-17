require "option_parser"
require "./launcher"
require "./env"

# History location
HISTORY_PATH = Path[ENV["XDG_CACHE_HOME"], "launcher-history.txt"]

# Subcommand
command = :help

# Option parser
option_parser = OptionParser.new do |parser|
  parser.banner = "Usage: launcher <command> [arguments]"

  parser.on("run", "Run a command") do
    command = :run
  end

  parser.on("menu", "Display a menu") do
    command = :menu
  end

  parser.on("help", "Show help") do
    command = :help
  end

  parser.invalid_option do |flag|
    STDERR.puts "Error: Unknown option: #{flag}"
    STDERR.puts parser
    exit(1)
  end
end

# Parse options
option_parser.parse(ARGV)

# Initialization
launcher = Launcher.new(history_path: HISTORY_PATH)

case command
when :run
  launcher.run(ARGV[0])
when :menu
  puts launcher.executables.join('\n')
when :help
  puts option_parser
else
  STDERR.puts option_parser
  exit(1)
end
