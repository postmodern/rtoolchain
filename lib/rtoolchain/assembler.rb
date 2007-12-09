require 'rtoolchain/program'
require 'rtoolchain/nameable'

module RToolchain
  class Assembler < Program

    include Nameable

    # Supported architectures
    attr_reader :archs

    def initialize(path,archs=[])
      super(path)

      @arch = archs
    end

    def self.native
      self.new(self.find_program,[Compat.arch])
    end

    def supports?(arch)
      @archs.include?(arch)
    end

  end
end
