require 'rtoolchain/compiler'
require 'rtoolchain/gnu/gcc/gpp_task'

module RToolchain
  module GNU
    class GPP < Compiler

      name_program 'g++'

      def initialize(path,platform,archs=[])
        super(path,platform,archs)
      end

      def compile(opts={},&block)
        run_with_task(GPPTask.new(opts,&block))
      end

    end
  end
end
