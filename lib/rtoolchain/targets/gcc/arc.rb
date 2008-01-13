require 'rtoolchain/targets/gcc_target'

module RToolchain
  module Targets
    module GCC
      class ARC < GCCTarget

        target 'arc'

        # ARC Options

        short_option :flag => '-EB', :name => :big_endian
        short_option :flag => '-EL', :name => :little_endian
        long_option :flag => '-mmangle-cpu', :name => :mangle_cpu
        long_option :flag => '-mcpu', :equals => true, :name => :cpu
        long_option :flag => '-mtext-section', :equals => true, :name => :text_section
        long_option :flag => '-mdata-section', :equals => true, :name => :data_section
        long_option :flag => '-mrodata', :equals => true, :name => :rodata_section

      end
    end
  end
end
