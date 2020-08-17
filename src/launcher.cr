class Launcher
  @history : Array(String)

  def initialize(@history_path = Path["launcher-history.txt"])
    @history = File.open(@history_path) do |file|
      file.gets_to_end.lines
    end
  end

  def executables
    (@history.reverse + self.class.executables.sort).uniq
  end

  def run(command)
    self.class.run(command)

    append_history(command)
  end

  private def append_history(command)
    File.open(@history_path, "a") do |file|
      file.puts command
    end
  end

  def self.run(command)
    Process.fork do
      Process.run(command)
    end
  end

  def self.executables
    paths.flat_map do |path|
      Dir.children(path).select do |executable|
        full_path = path / executable
        File.file?(full_path) && File.executable?(full_path)
      end
    end
  end

  def self.paths
    items = ENV["PATH"].split(':').each

    items = items.map do |path|
      Path.new(path)
    end

    items = items.reject do |path|
      !Dir.exists?(path)
    end

    items.to_a
  end
end
