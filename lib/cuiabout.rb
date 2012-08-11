require "cuiabout/version"

module Cuiabout
  class CLI

    ROOT_PATH = 'http://cui-about.me'

    def self.run *args
      command = args.shift || 'help'
      send(command, *args)
    end

    def self.help *args
      system "curl #{ROOT_PATH}"
    end
    alias :me, :help

  end
end
