require 'rtoolchain/targets/gcctarget'

module RToolchain
  module Targets
    module GCC
      class CRIS < GCCTarget

        target 'cris'

        # CRIS Options

        gnu_machine_option :flag => '-mcpu', :equals => true
        gnu_machine_option :flag => '-march', :equals => true
        gnu_machine_option :flag => '-mtune', :equals => true
        gnu_machine_option :flag => '-mmax-stack-frame', :equals => true
        gnu_machine_option :flag => '-melinux-stacksize', :equals => true
        gnu_machine_option :flag => '-metrax4'
        gnu_machine_option :flag => '-metrax100'
        gnu_machine_option :flag => '-mpdebug'
        gnu_machine_option :flag => '-mcc-init'
        gnu_machine_option :flag => '-mno-side-effects'
        gnu_machine_option :flag => '-mstack-align'
        gnu_machine_option :flag => '-mdata-align'
        gnu_machine_option :flag => '-mconst-align'
        gnu_machine_option :flag => '-m32-bit'
        gnu_machine_option :flag => '-m16-bit'
        gnu_machine_option :flag => '-m8-bit'
        gnu_machine_option :flag => '-mno-prologue-epilogue'
        gnu_machine_option :flag => '-mno-gotplt'
        gnu_machine_option :flag => '-melf'
        gnu_machine_option :flag => '-maout'
        gnu_machine_option :flag => '-melinux'
        gnu_machine_option :flag => '-mlinux'
        long_option :flag => '-sim'
        long_option :flag => '-sim2'
        gnu_machine_option :flag => '-mmul-bug-workaround'
        gnu_machine_option :flag => '-mno-mul-bug-workaround'

      end
    end
  end
end
