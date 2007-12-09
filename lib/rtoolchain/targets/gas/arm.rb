require 'rtoolchain/targets/gastarget'

module RToolchain
  module Targets
    module GAS
      class ARM < GASTarget

        target 'arm'

        # options for the ARM processor family

        gnu_machine_option :flag => '-mfpu', :equals => true
        gnu_machine_option :flag => '-mfloat-abi', :equals => true

        gnu_machine_option :flag => '-mthumb'
        gnu_machine_option :flag => '-mapcs-32'
        gnu_machine_option :flag => '-mapcs-26'
        gnu_machine_option :flag => '-mapcs-float'
        gnu_machine_option :flag => '-mapcs-reentrant'
        gnu_machine_option :flag => '-mthumb-interwork'
        short_option :flag => '-k', :name => :pic_generated

      end
    end
  end
end
