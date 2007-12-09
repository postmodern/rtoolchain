require 'rtoolchain/targets/gcctarget'

module RToolchain
  module Targets
    module GCC
      class H8300 < GCCTarget

        target 'h8300'

        # H8/300 Options

        gnu_machine_option :flag => '-mrelax'
        gnu_machine_option :flag => '-mh', :name => :generate_h8_300h
        gnu_machine_option :flag => '-ms', :name => :generate_h8s
        gnu_machine_option :flag => '-mn', :name => :generate_normal_mode
        gnu_machine_option :flag => '-mint32'
        gnu_machine_option :flag => '-malign-300'

      end
    end
  end
end
