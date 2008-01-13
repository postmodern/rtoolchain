require 'rtoolchain/targets/gas_target'

module RToolchain
  module Targets
    module GAS
      class C54X < GASTarget

        target 'c54x'

        # options for the c54x architecture

        gnu_machine_option :flag => '-mfar-mode'
        gnu_machine_option :flag => '-merrors-to-file'

      end
    end
  end
end
