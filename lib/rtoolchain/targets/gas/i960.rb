require 'rtoolchain/targets/gastarget'

module RToolchain
  module Targets
    module GAS
      class I960 < GASTarget

        target 'i960'

        # options for an Intel 80960 processor

        short_option :flag => '-b', :name => :collect_branch_statistics
        long_option :flag => '-no-relax'

      end
    end
  end
end
