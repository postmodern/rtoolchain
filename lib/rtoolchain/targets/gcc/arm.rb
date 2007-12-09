require 'rtoolchain/targets/gcctarget'

module RToolchain
  module Targets
    module GCC
      class ARM < GCCTarget

        target 'arm'

        # ARM Options

        gnu_machine_option :flag => '-mapcs-frame'
        gnu_machine_option :flag => '-mno-apcs-frame'
        gnu_machine_option :flag => '-mabi', :equals => true
        gnu_machine_option :flag => '-mapcs-stack-check'
        gnu_machine_option :flag => '-mno-apcs-stack-check'
        gnu_machine_option :flag => '-mapcs-float'
        gnu_machine_option :flag => '-mno-apcs-float'
        gnu_machine_option :flag => '-mapcs-reentrant'
        gnu_machine_option :flag => '-mno-apcs-reentrant'
        gnu_machine_option :flag => '-msched-prolog'
        gnu_machine_option :flag => '-mno-sched-prolog'
        gnu_machine_option :flag => '-mlittle-endian'
        gnu_machine_option :flag => '-mbig-endian'
        gnu_machine_option :flag => '-mwords-little-endian'
        gnu_machine_option :flag => '-mfloat-abi=name'
        gnu_machine_option :flag => '-msoft-float'
        gnu_machine_option :flag => '-mhard-float'
        gnu_machine_option :flag => '-mfpe'
        gnu_machine_option :flag => '-mthumb-interwork'
        gnu_machine_option :flag => '-mno-thumb-interwork'
        gnu_machine_option :flag => '-mcpu', :equals => true
        gnu_machine_option :flag => '-march', :equals => true
        gnu_machine_option :flag => '-mfpu', :equals => true
        gnu_machine_option :flag => '-mstructure-size-boundary', :equals => true
        gnu_machine_option :flag => '-mabort-on-noreturn'
        gnu_machine_option :flag => '-mlong-calls'
        gnu_machine_option :flag => '-mno-long-calls'
        gnu_machine_option :flag => '-msingle-pic-base'
        gnu_machine_option :flag => '-mno-single-pic-base'
        gnu_machine_option :flag => '-mpic-register', :equals => true
        gnu_machine_option :flag => '-mnop-fun-dllimport'
        gnu_machine_option :flag => '-mcirrus-fix-invalid-insns'
        gnu_machine_option :flag => '-mno-cirrus-fix-invalid-insns'
        gnu_machine_option :flag => '-mpoke-function-name'
        gnu_machine_option :flag => '-mthumb'
        gnu_machine_option :flag => '-marm'
        gnu_machine_option :flag => '-mtpcs-frame'
        gnu_machine_option :flag => '-mtpcs-leaf-frame'
        gnu_machine_option :flag => '-mcaller-super-interworking'
        gnu_machine_option :flag => '-mcallee-super-interworking'
        gnu_machine_option :flag => '-mtp', :equals => true

      end
    end
  end
end
