require 'rtoolchain/targets/gas_target'

module RToolchain
  module Targets
    module GAS
      class Xtensa < GASTarget

        target 'xtensa'

        # options for the Xtensa processor

        long_option :flag => '--text-section-literals'
        long_option :flag => '--no-text-section-literals'
        long_option :flag => '--absolute-literals'
        long_option :flag => '--no-absolute-literals'
        long_option :flag => '--target-align'
        long_option :flag => '--no-target-align'
        long_option :flag => '--longcalls'
        long_option :flag => '--no-longcalls'
        long_option :flag => '--transform'
        long_option :flag => '--no-transform'

      end
    end
  end
end
