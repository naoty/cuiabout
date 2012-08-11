require "cuiabout/version"

module Cuiabout
  class CLI

    ROOT_PATH = 'http://cui-about.me'

    class << self

      def run *args
        command = args.shift || 'usage'
        send(command, *args)
      end

      def usage *args
        puts %(
Usage: cuiabout ACTION

  cuiabout [username]       # Prints user's profile
  cuiabout show [username]  # Prints user's profile
        )
      end
      alias :help :usage
      alias :me :usage

      def show *args
        abort "ERROR: Please specify hacker's name" if args.empty?

        name = args.shift
        system "curl #{ROOT_PATH}/#{name}"
      end

      def method_missing method_or_name, *args
        if listed? method_or_name
          show method_or_name
        else
          abort 'ERROR: Unknown command'
        end
      end

      def listed? name
        names = `curl --silent #{ROOT_PATH}/users`
        names.split($/).include?(name.to_s)
      end

    end

  end
end
