require 'rtoolchain/assembler'
require 'rtoolchain/gnu/gas/gastask'

module RToolchain
  module GNU
    class GAS < Assembler

      name_program :as

      def initialize(path,archs=[])
        super(path,archs)
      end

      def assemble(options={},&block)
        if options[:files]
          options[:output] ||= options[:files].to_s.gsub(/\.[sS]$/,'.o')
        end

        return run_with_task(GASTask.new(options,&block))
      end

    end
  end
end
