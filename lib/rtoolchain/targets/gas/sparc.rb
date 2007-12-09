require 'rtoolchain/targets/gastarget'

module RToolchain
  module Targets
    module GAS
      class SPARC < GASTarget

        target 'sparc'

        # options for the SPARC architecture

        long_option :flag => '-bump', :name => :warn_on_arch_switch

      end
    end
  end
end
