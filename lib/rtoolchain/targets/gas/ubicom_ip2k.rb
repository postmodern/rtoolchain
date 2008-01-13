require 'rtoolchain/targets/gas_target'

module RToolchain
  module Targets
    module GAS
      class UbicomIP2K < GASTarget

        target 'ubicom_ip2k'

        # options for the Ubicom IP2K series

        gnu_machine_option :flag => '-mip2022ext'
        gnu_machine_option :flag => '-mip2022'

      end
    end
  end
end
