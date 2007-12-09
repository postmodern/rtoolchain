require 'rtoolchain/compilers/targets/x86'

module RToolchain
  module Targets
    module GCC
      class X86_64 < X86

        target 'x86_64'

        gnu_machine_option :flag => '-mno-red-zone'
        gnu_machine_option :flag => '-mcmodel', :equals => true
        gnu_machine_option :flag => '-m32', :name => :generate_for_32bit_env
        gnu_machine_option :flag => '-m64', :name => :generate_for_64bit_env

      end
    end
  end
end
