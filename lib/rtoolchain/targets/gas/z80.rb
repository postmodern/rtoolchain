require 'rtoolchain/targets/gastarget'

module RToolchain
  module Targets
    module GAS
      class Z80 < GASTarget

        target 'z80'

        # options for the Z80 family processor

        long_option :flag => '-z80'
        long_option :flag => '-r800'
        long_option :flag => '-ignore-undocumented-instructions'
        long_option :flag => '-ignore-unportable-instructions'
        long_option :flag => '-warn-undocumented-instructions'
        long_option :flag => '-warn-unportable-instructions'
        long_option :flag => '-forbid-undocumented-instructions'
        long_option :flag => '-forbid-unportable-instructions'

      end
    end
  end
end
