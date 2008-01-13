require 'rtoolchain/targets/gcc_target'

module RToolchain
  module Targets
    module GCC
      class X86 < GCCTarget

        target 'x86'

        # i386 and x86-64 Options

        gnu_machine_option :flag => '-mtune', :equals => true
        gnu_machine_option :flag => '-march', :eqausl => true
        gnu_machine_option :flag => '-mfpmatch', :equals => true
        gnu_machine_option :flag => '-masm', :equals => true
        gnu_machine_option :flag => '-mno-fancy-math-387'
        gnu_machine_option :flag => '-mno-fp-ret-in-387'
        gnu_machine_option :flag => '-msoft-float'
        gnu_machine_option :flag => '-mno-wide-multiply'
        gnu_machine_option :flag => '-mrtd'
        gnu_machine_option :flag => '-malign-double'
        gnu_machine_option :flag => '-mpreferred-stack-boundary', :equals => true
        gnu_machine_option :flag => '-mcx16'
        gnu_machine_option :flag => '-msahf'
        gnu_machine_option :flag => '-mrecip'
        gnu_machine_option :flag => '-mmmx'
        gnu_machine_option :flag => '-msse'
        gnu_machine_option :flag => '-msse2'
        gnu_machine_option :flag => '-msse3'
        gnu_machine_option :flag => '-mssse3'
        gnu_machine_option :flag => '-msse4.1'
        gnu_machine_option :flag => '-msse4.2'
        gnu_machine_option :flag => '-msse4'
        gnu_machine_option :flag => '-msse4a'
        gnu_machine_option :flag => '-m3dnow'
        gnu_machine_option :flag => '-mpopcnt'
        gnu_machine_option :flag => '-mabm'
        gnu_machine_option :flag => '-msse5'
        gnu_machine_option :flag => '-mthreads'
        gnu_machine_option :flag => '-mno-align-stringops'
        gnu_machine_option :flag => '-minline-all-stringops'
        gnu_machine_option :flag => '-mpush-args'
        gnu_machine_option :flag => '-maccumulate-outgoing-args'
        gnu_machine_option :flag => '-m128bit-long-double', :name => :use_128bit_long_double
        gnu_machine_option :flag => '-m96bit-long-double', :name => :use_96bit_double
        gnu_machine_option :flag => '-mregparm', :equals => true
        gnu_machine_option :flag => '-msseregparm'
        gnu_machine_option :flag => '-mveclibabi', :equals => true
        gnu_machine_option :flag => '-mpc32'
        gnu_machine_option :flag => '-mpc64'
        gnu_machine_option :flag => '-mpc80'
        gnu_machine_option :flag => '-mstackrealign'
        gnu_machine_option :flag => '-momit-leaf-frame-pointer'
        gnu_machine_option :flag => '-mno-tls-direct-seg-refs'
        gnu_machine_option :flag => '-mlarge-data-threshold', :equals => true
        gnu_machine_option :flag => '-mfused-madd'
        gnu_machine_option :flag => '-mno-fused-madd'

      end
    end
  end
end
