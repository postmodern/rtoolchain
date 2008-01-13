require 'rprogram/program'

module RToolchain
  module GNU
    class Binutil < RProgram::Program

      def initialize(path)
        super(path)
      end

      def self.native
        self.create
      end

    end
  end
end
