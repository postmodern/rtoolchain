require 'rtoolchain/targets/gcctarget'

module RToolchain
  module Targets
    module GCC
      class Alpha < GCCTarget

        target 'alpha'

        # DEC Alpha Options

        gnu_machine_option :flag => '-mno-fp-regs'
        gnu_machine_option :flag => '-msoft-float'
        gnu_machine_option :flag => '-malpha-as'
        gnu_machine_option :flag => '-mgas'
        gnu_machine_option :flag => '-mieee'
        gnu_machine_option :flag => '-mieee-with-inexact'
        gnu_machine_option :flag => '-mieee-conformant'
        gnu_machine_option :flag => '-mfp-trap-mode', :equals => true
        gnu_machine_option :flag => '-mfp-rounding-mode', :equals => true
        gnu_machine_option :flag => '-mtrap-precision', :equals => true
        gnu_machine_option :flag => '-mbuild-constants'
        gnu_machine_option :flag => '-mcpu', :equals => true
        gnu_machine_option :flag => '-mtune', :equals => true
        gnu_machine_option :flag => '-mbwx'
        gnu_machine_option :flag => '-mmax'
        gnu_machine_option :flag => '-mfix'
        gnu_machine_option :flag => '-mcix'
        gnu_machine_option :flag => '-mfloat-vax'
        gnu_machine_option :flag => '-mfloat-ieee'
        gnu_machine_option :flag => '-mexplicit-relocs'
        gnu_machine_option :flag => '-msmall-data'
        gnu_machine_option :flag => '-mlarge-data'
        gnu_machine_option :flag => '-msmall-text'
        gnu_machine_option :flag => '-mlarge-text'
        gnu_machine_option :flag => '-mmemory-latency', :equals => true

      end
    end
  end
end
