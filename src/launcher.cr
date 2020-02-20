require "./launcher/env"

HISTORY_PATH = Path[ENV["XDG_CACHE_HOME"], "launcher-history.txt"]

def get_history_path
  HISTORY_PATH
end
