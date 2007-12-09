require 'rtoolchain/gnu/targets/gastarget'

module RToolchain
  module Targets
    module GAS
      class D30V < GASTarget

        target 'd30v'

        # options for the D30V processor

        short_option :flag => '-O', :name => :optimize_for_parallelization
        short_option :flag => '-n', :name => :warn_on_nops
        short_option :flag => '-N', :name => :warn_on_nops_after_multiply

      end
    end
  end
end
