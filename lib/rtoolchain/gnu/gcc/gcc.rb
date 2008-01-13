require 'rtoolchain/compiler'
require 'rtoolchain/gnu/gcc/gcctask'

module RToolchain
  module GNU
    class GCC < Compiler

      name_program :gcc

      def initialize(path,platform,archs=[])
        super(path,platform,archs)
      end

      def compile(options={},&block)
        run_with_task(GCCTask.new(options,&block))
      end

    end
  end
end
