require 'rtoolchain/targets/gcc_target'

module RToolchain
  module Targets
    module GCC
      class AlphaVMS < GCCTarget

        target 'alphavms'

        # DEC Alpha/VMS Options

        gnu_machine_option :flag => '-mvms-return-codes'

      end
    end
  end
end
