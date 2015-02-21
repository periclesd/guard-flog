require 'guard/compat/plugin'

module Guard
  class Flog < Plugin
    autoload :Flogger, 'guard/flog/flogger'

    def start; end

    def reload; end

    def run_all; end

    def run_on_changes(paths)
      Flogger.new.flog paths
    end
  end
end
