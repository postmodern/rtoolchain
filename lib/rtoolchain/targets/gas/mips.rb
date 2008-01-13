require 'rtoolchain/targets/gas_target'

module RToolchain
  module Targets
    module GAS
      class MIPS < GASTarget

        target 'mips'

        # options for the MIPS processor

        short_option :flag => '-G', :name => :gpsize
        long_option :flag => '-mips1'
        long_option :flag => '-mips2'
        long_option :flag => '-mips3'
        long_option :flag => '-mips4'
        long_option :flag => '-mips5'
        long_option :flag => '-mips32'
        long_option :flag => '-mips32r2'
        long_option :flag => '-mips64'
        long_option :flag => '-mips64r2'
        gnu_machine_option :flag => '-mfix7000'
        gnu_machine_option :flag => '-mno-fix7000'
        gnu_machine_option :flag => '-mpdf'
        gnu_machine_option :flag => '-mno-pdf'
        gnu_machine_option :flag => '-mgp32'
        gnu_machine_option :flag => '-mfp32'
        long_option :flag => '-mips16'
        long_option :flag => '-no-mips16'
        long_option :flag => '-mips3d'
        long_option :flag => '-no-mips3d'
        long_option :flag => '-mdmx'
        long_option :flag => '-no-mdmx'
        gnu_machine_option :flag => '-mdsp'
        gnu_machine_option :flag => '-mno-dsp'
        gnu_machine_option :flag => '-mmt'
        gnu_machine_option :flag => '-mno-mmt'
        long_option :flag => '--construct-floats'
        long_option :flag => '--no-construct-floats'
        long_option :flag => '--emulation'
        long_option :flag => '--trap'
        long_option :flag => '--no-trap'

      end
    end
  end
end
