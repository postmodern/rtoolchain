require 'rtoolchain/targets/gastarget'

module RToolchain
  module Targets
    module GAS
      class D10V < GASTarget

        target 'd10v'

        # options for D10V processor

        short_option :flag => '-O', :name => :optimize_for_parallelization

      end
    end
  end
end
