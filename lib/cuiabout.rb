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
  cuiabout list             # Prints all user names
        )
      end
      alias :help :usage
      alias :me :usage

      def list *args
        system "curl #{ROOT_PATH}/users"
      end

      def show *args
        abort "ERROR: Please specify user's name" if args.empty?

        name = args.shift
        system "curl #{ROOT_PATH}/#{name}"
      end

      def signup *args
        abort 'ERROR: Please specify your name' if args.empty?

        name = args.shift
        password = ask_password
        data = "name=#{name}&password=#{password}"
        args.each do |arg|
          data += "&#{arg}"
        end
        system "curl -X POST -d '#{data}' #{ROOT_PATH}/signup"
      end

      def update *args
        abort 'ERROR: Please specify your name' if args.empty?

        name = args.shift
        password = ask_password
        data = "password=#{password}"
        args.each do |arg|
          data += "&#{arg}"
        end
        system "curl -X PUT -d '#{data}' #{ROOT_PATH}/#{name}"
      end

      def method_missing method_or_name, *args
        if listed? method_or_name
          show method_or_name
        else
          abort 'ERROR: Unknown command'
        end
      end

      private

      def listed? name
        names = `curl --silent #{ROOT_PATH}/users`
        names.split($/).include?(name.to_s)
      end

      def ask_password
        print 'password: '
        system 'stty -echo'
        password = $stdin.gets.chop
        system 'stty echo'
        print "\n"
        return password
      end

    end

  end
end
