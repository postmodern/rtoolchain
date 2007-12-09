require 'rtoolchain/targets/gcctarget'

module RToolchain
  module Targets
    module GCC
      class FRV < GCCTarget

        target 'frv'

        # FRV Options

        gnu_machine_option :flag => '-mgpr-32'
        gnu_machine_option :flag => '-mgpr-64'
        gnu_machine_option :flag => '-mfpr-32'
        gnu_machine_option :flag => '-mfpr-64'
        gnu_machine_option :flag => '-mhard-float'
        gnu_machine_option :flag => '-msoft-float'
        gnu_machine_option :flag => '-malloc-cc'
        gnu_machine_option :flag => '-mfixed-cc'
        gnu_machine_option :flag => '-mdword'
        gnu_machine_option :flag => '-mno-dword'
        gnu_machine_option :flag => '-mdouble'
        gnu_machine_option :flag => '-mno-double'
        gnu_machine_option :flag => '-mmedia'
        gnu_machine_option :flag => '-mno-media'
        gnu_machine_option :flag => '-mmuladd'
        gnu_machine_option :flag => '-mno-muladd'
        gnu_machine_option :flag => '-mfdpic'
        gnu_machine_option :flag => '-minline-plt'
        gnu_machine_option :flag => '-mgprel-ro'
        gnu_machine_option :flag => '-multilib-library-pic'
        gnu_machine_option :flag => '-mlinked-fp'
        gnu_machine_option :flag => '-mlong-calls'
        gnu_machine_option :flag => '-malign-labels'
        gnu_machine_option :flag => '-mlibrary-pic'
        gnu_machine_option :flag => '-macc-4'
        gnu_machine_option :flag => '-macc-8'
        gnu_machine_option :flag => '-mpack'
        gnu_machine_option :flag => '-mno-pack'
        gnu_machine_option :flag => '-mno-eflags'
        gnu_machine_option :flag => '-mcond-move'
        gnu_machine_option :flag => '-mno-cond-move'
        gnu_machine_option :flag => '-moptimize-membar'
        gnu_machine_option :flag => '-mno-optimize-membar'
        gnu_machine_option :flag => '-mscc'
        gnu_machine_option :flag => '-mno-scc'
        gnu_machine_option :flag => '-mcond-exec'
        gnu_machine_option :flag => '-mno-cond-exec'
        gnu_machine_option :flag => '-mvliw-branch'
        gnu_machine_option :flag => '-mno-vliw-branch'
        gnu_machine_option :flag => '-mmulti-cond-exec'
        gnu_machine_option :flag => '-mno-multi-cond-exec'
        gnu_machine_option :flag => '-mnested-cond-exec'
        gnu_machine_option :flag => '-mno-nested-cond-exec'
        gnu_machine_option :flag => '-mtomcat-stats'
        gnu_machine_option :flag => '-mTLS', :name => :assume_large_tls
        gnu_machine_option :flag => '-mtls', :name => :dont_assume_large_tls
        gnu_machine_option :flag => '-mcpu', :equals => true

      end
    end
  end
end
