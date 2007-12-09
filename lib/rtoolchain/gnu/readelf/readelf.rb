require 'rtoolchain/gnu/binutil'
require 'rtoolchain/gnu/readelf/readelftask'

module RToolchain
  module GNU
    class ReadELF < Binutil

      name_program :readelf

      def initialize(path)
        super(path)
      end

      def read(options={},&block)
        run_task(ReadELFTask.new(options,&block))
      end

    end
  end
end
