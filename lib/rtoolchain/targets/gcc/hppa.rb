require 'rtoolchain/targets/gcctarget'

module RToolchain
  module Targets
    module GCC
      class HPPA < GCCTarget

        target 'hppa'

        # HPPA Options

        gnu_machine_option :flag => '-march', :equals => true
        gnu_machine_option :flag => '-mbig-switch'
        gnu_machine_option :flag => '-mdisable-fpregs'
        gnu_machine_option :flag => '-mdisable-indexing'
        gnu_machine_option :flag => '-mfast-indirect-calls'
        gnu_machine_option :flag => '-mgas'
        gnu_machine_option :flag => '-mgnu-ld'
        gnu_machine_option :flag => '-mhp-ld'
        gnu_machine_option :flag => '-mfixed-range', :equals => true
        gnu_machine_option :flag => '-mjump-in-delay'
        gnu_machine_option :flag => '-mlinker-opt'
        gnu_machine_option :flag => '-mlong-calls'
        gnu_machine_option :flag => '-mlong-load-store'
        gnu_machine_option :flag => '-mno-big-switch'
        gnu_machine_option :flag => '-mno-disable-fpregs'
        gnu_machine_option :flag => '-mno-disable-indexing'
        gnu_machine_option :flag => '-mno-fast-indirect-calls'
        gnu_machine_option :flag => '-mno-gas'
        gnu_machine_option :flag => '-mno-jump-in-delay'
        gnu_machine_option :flag => '-mno-long-load-store'
        gnu_machine_option :flag => '-mno-portable-runtime'
        gnu_machine_option :flag => '-mno-soft-float'
        gnu_machine_option :flag => '-mno-space-regs'
        gnu_machine_option :flag => '-msoft-float'
        gnu_machine_option :flag => '-mpa-risc-1-0'
        gnu_machine_option :flag => '-mpa-risc-1-1'
        gnu_machine_option :flag => '-mpa-risc-2-0'
        gnu_machine_option :flag => '-mportable-runtime'
        gnu_machine_option :flag => '-mschedule', :equals => true
        gnu_machine_option :flag => '-mspace-regs'
        gnu_machine_option :flag => '-msio'
        gnu_machine_option :flag => '-mwsio'
        gnu_machine_option :flag => '-munix', :equals => true
        long_option :flag => '-nolibdld'
        long_option :flag => '-static'
        long_option :flag => '-threads'

      end
    end
  end
end
