require 'rtoolchain/linker'
require 'rtoolchain/gnu/ld/ld_task'

module RToolchain
  module GNU
    class LD < Linker

      def initialize(path,archs=[])
        super(path,archs)
      end

      def link(options={},&block)
        run_with_task(LDTask.new(options,&block))
      end

    end
  end
end
