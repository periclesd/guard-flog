require 'guard'
require 'guard/guard'

module Guard
  class Flog < Guard
    autoload :Flogger, 'guard/flog/flogger'

    def initialize(watchers = [], options = {})
      super
      @flogger = Flogger.new
    end

    def start; end

    def reload; end

    def run_all; end

    def run_on_changes(paths)
      @flogger.flog paths
    end
  end
end
