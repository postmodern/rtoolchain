require 'rtoolchain/targets/gcc_target'

module RToolchain
  module Targets
    module GCC
      class GNULinux < GCCTarget

        target 'gnulinux'

        # GNU/Linux Options

        gnu_machine_option :flag => '-muclibc'

      end
    end
  end
end
