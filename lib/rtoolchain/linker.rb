require 'rtoolchain/program'
require 'rtoolchain/nameable'

module RToolchain
  class Linker < Program

    include Nameable

    # Supported architectures
    attr_reader :archs

    def initialize(path,archs=[])
      super(path)

      @archs = archs
    end

    def self.native
      self.new(self.find_program,[Compat.arch])
    end

  end
end
