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

    def self.show *args
      abort "Please specify hacker's name." if args.empty?

      name = args.shift
      system "curl #{ROOT_PATH}/#{name}"
    end

  end
end
