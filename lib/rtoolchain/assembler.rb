require 'rprogram/program'

module RToolchain
  class Assembler < RProgram::Program

    # Supported architectures
    attr_reader :archs

    def initialize(path,archs=[])
      super(path)

      @arch = archs
    end

    def self.native
      self.create([Compat.arch])
    end

    def supports?(arch)
      @archs.include?(arch)
    end

  end
end
