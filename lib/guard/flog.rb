require 'guard'
require 'guard/guard'

module Guard
  class Flog < Guard
    autoload :Flogger, 'guard/flog/flogger'

    def start; end

    def reload; end

    def run_all; end

    def run_on_changes(paths)
      Flogger.new(@options).flog paths
    end
  end
end
