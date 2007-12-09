require 'rtoolchain/program'
require 'rtoolchain/nameable'

module RToolchain
  module GNU
    class Binutil < Program

      include Nameable

      def initialize(path)
        super(path)
      end

      def self.native
        self.new(self.find_program)
      end

    end
  end
end
