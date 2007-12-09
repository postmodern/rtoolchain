require 'rtoolchain/gnu/binutil'
require 'rtoolchain/gnu/strings/stringstask'

module RToolchain
  module GNU
    class Strings < Binutil

      name_program :strings

      def initialize(path)
        super(path)
      end

      def strings(options={},&block)
        run_task(StringsTask.new(options,&block))
      end

    end
  end
end
