require 'rtoolchain/targets/gcc_target'

module RToolchain
  module Targets
    module GCC
      class CRX < GCCTarget

        target 'crx'

        # CRX Options

        gnu_machine_option :flag => '-mmac'
        gnu_machine_option :flag => '-mpush-args'

      end
    end
  end
end
