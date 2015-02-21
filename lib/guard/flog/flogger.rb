require 'flog_cli'

module Guard
  class Flog
    class Flogger
      def initialize(options)
        ::FlogCLI.load_plugins
        options ||= ::FlogCLI.parse_options
        @flogger = ::FlogCLI.new(options)
      end

      def flog(paths)
        paths.each do |path|
          UI.info "Running flog for file: '#{path}'", reset: true
          @flogger.flog(path)
          @flogger.report
          puts
        end
      end
    end
  end
end
