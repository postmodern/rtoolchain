require 'rtoolchain/gnu/binutil'
require 'rtoolchain/gnu/readelf/readelf_task'

module RToolchain
  module GNU
    class ReadELF < Binutil

      name_program :readelf

      def initialize(path)
        super(path)
      end

      def read(options={},&block)
        run_with_task(ReadELFTask.new(options,&block))
      end

    end
  end
end
