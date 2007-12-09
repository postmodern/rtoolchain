require 'rtoolchain/targets/gastarget'

module RToolchain
  module Targets
    module GAS
      class ARC < GASTarget

        target 'arc'

        # options for an ARC processor

        gnu_machine_option :flag => '-marc5'
        gnu_machine_option :flag => '-marc6'
        gnu_machine_option :flag => '-marc7'
        gnu_machine_option :flag => '-marc8'

      end
    end
  end
end
