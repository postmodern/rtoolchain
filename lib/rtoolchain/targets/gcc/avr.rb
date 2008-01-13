require 'rtoolchain/targets/gcc_target'

module RToolchain
  module Targets
    module GCC
      class AVR < GCCTarget

        target 'avr'

        # AVR Options

        gnu_machine_option :flag => '-mmcu', :equals => true
        gnu_machine_option :flag => '-msize'
        gnu_machine_option :flag => '-minit-stack', :equals => true
        gnu_machine_option :flag => '-mno-interrupts'
        gnu_machine_option :flag => '-mcall-prologues'
        gnu_machine_option :flag => '-mno-tablejump'
        gnu_machine_option :flag => '-mtiny-stack'
        gnu_machine_option :flag => '-mint8'

      end
    end
  end
end
