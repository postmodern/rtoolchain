require 'rtoolchain/gnu/binutil'
require 'rtoolchain/gnu/objdump/objdump_task'

module RToolchain
  module GNU
    class Objdump < Binutil

      name_program :objdump

      def initialize(path)
        super(path)
      end

      def dump(options={},&block)
        run_with_task(ObjdumpTask.new(options,&block))
      end

    end
  end
end
