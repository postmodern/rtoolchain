require 'rtoolchain/targets/gastarget'

module RToolchain
  module Targets
    module GAS
      class Renesas < GASTarget

        target 'renesas'

        # options for the Renesas M32C and M16C processors

        long_option :flag => '-m32c'
        long_option :flag => '-m16c'

        # options for the Renesas M32R (formerly Mitsubishi M32R) series

        long_option :flag => '-m32rx'
        long_option :flag => '--warn-explicit-parallel-conflicts'
        long_option :flag => '--no-warn-explicit-parallel-conflicts'

      end
    end
  end
end
