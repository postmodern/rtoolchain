require 'rtoolchain/targets/gas_target'

module RToolchain
  module Targets
    module GAS
      class PDP11 < GASTarget

        target 'pdp11'

        # PDP-11 specific options

        gnu_machine_option :flag => '-mpic'
        gnu_machine_option :flag => '-mno-pic'
        gnu_machine_option :flag => '-mall-extensions'
        gnu_machine_option :flag => '-mno-extensions'

      end
    end
  end
end
