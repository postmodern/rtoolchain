require 'rtoolchain/gnu/binutil'
require 'rtoolchain/gnu/strings/strings_task'

module RToolchain
  module GNU
    class Strings < Binutil

      name_program :strings

      def initialize(path)
        super(path)
      end

      def strings(options={},&block)
        run_with_task(StringsTask.new(options,&block))
      end

    end
  end
end
