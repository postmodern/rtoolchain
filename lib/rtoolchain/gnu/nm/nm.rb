require 'rtoolchain/gnu/binutil'
require 'rtoolchain/gnu/nm/nm_task'

module RToolchain
  module GNU
    class NM < Binutil

      name_program :nm

      def initialize(path)
        super(path)
      end

      def list(options={},&block)
        run_with_task(NMTask.new(options,&block))
      end

    end
  end
end
