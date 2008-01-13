require 'rtoolchain/targets/gas_target'

module RToolchain
  module Targets
    module GAS
      class M68K < GASTarget

        target 'm68k'

        # options for the Motorola 68000 series

        short_option :flag => '-l', :name => :shorten_references
        gnu_machine_option :flag => '-m68000', :name => :cpu_68000
        gnu_machine_option :flag => '-m68008', :name => :cpu_68008
        gnu_machine_option :flag => '-m68010', :name => :cpu_68010
        gnu_machine_option :flag => '-m68020', :name => :cpu_68020
        gnu_machine_option :flag => '-m68030', :name => :cpu_68030
        gnu_machine_option :flag => '-m68040', :name => :cpu_68040
        gnu_machine_option :flag => '-m68060', :name => :cpu_68060
        gnu_machine_option :flag => '-m68302', :name => :cpu_68302
        gnu_machine_option :flag => '-m68331', :name => :cpu_68331
        gnu_machine_option :flag => '-m68332', :name => :cpu_68332
        gnu_machine_option :flag => '-m68333', :name => :cpu_68333
        gnu_machine_option :flag => '-m68340', :name => :cpu_68340
        gnu_machine_option :flag => '-mcpu32'
        gnu_machine_option :flag => '-m5200', :name => :cpu_5200
        gnu_machine_option :flag => '-m68881', :name => :cpu_68881
        gnu_machine_option :flag => '-m68882', :name => :cpu_68882
        gnu_machine_option :flag => '-mno-68881', :name => :no_cpu_68881
        gnu_machine_option :flag => '-mno-68882', :name => :no_cpu_68882
        gnu_machine_option :flag => '-m68851', :name => :cpu_68851
        gnu_machine_option :flag => '-mno-68851', :name => :no_cpu_68851

        # options for the Motorola 68HC11 and 68HC12 series

        gnu_machine_option :flag => '-m68hc11', :name => :cpu_68hc11
        gnu_machine_option :flag => '-m68hc12', :name => :cpu_68hc12
        gnu_machine_option :flag => '-m68hcs12', :name => :cpu_68hcs12
        gnu_machine_option :flag => '-mshort'
        gnu_machine_option :flag => '-mlong'
        gnu_machine_option :flag => '-mshort-double'
        gnu_machine_option :flag => '-mlong-double'
        long_option :flag => '--force-long-branchs'
        long_option :flag => '--short-branchs'
        long_option :flag => '--strict-direct-mode'
        long_option :flag => '--print-insn-syntax'
        long_option :flag => '--print-opcodes'
        long_option :flag => '--generate-example'

      end
    end
  end
end
