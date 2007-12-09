require 'rtoolchain/compat'
require 'rtoolchain/task'
require 'rtoolchain/exceptions/programnotfound'

require 'tempfile'

module RToolchain
  class Program

    # Path to the program
    attr_reader :path

    # Name of the program
    attr_reader :name

    def initialize(path)
      @path = File.expand_path(path)
      @name = File.basename(@path)
    end

    def self.find_by_name(name)
      path = Compat.find_program(name)
      unless path
        raise(ProgramNotFound,"program '#{name}' could not be found",caller)
      end

      return self.new(path)
    end

    def self.find_by_names(*names)
      path = Compat.find_program_by_names(*names)

      unless path
        names = names.map { |name| "'#{name}'" }.join(', ')

        raise(ProgramNotFound,"programs #{names} were not be found",caller)
      end

      return self.new(path)
    end

    def self.create_from_path(path)
      return self.new(path) if File.file?(path)
    end

    def self.create_from_paths(*paths)
      paths.each do |path|
        return self.new(path) if File.file?(path)
      end
    end

    def run(*args)
      command = [@path] + args

      IO.popen(command.join(' ')) do |process|
        return process.readlines
      end
    end

    def run_task(task)
      run(*(task.arguments))
    end

    def to_s
      @path.to_s
    end

  end
end
