require 'rprogram/program'

module RToolchain
  class Linker < RProgram::Program

    # Supported architectures
    attr_reader :archs

    def initialize(path,archs=[])
      super(path)

      @archs = archs
    end

    def self.native
      self.create([Compat.arch])
    end

  end
end
