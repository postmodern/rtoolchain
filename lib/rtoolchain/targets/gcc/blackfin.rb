require 'rtoolchain/targets/gcc_target'

module RToolchain
  module Targets
    module GCC
      class Blackfin < GCCTarget

        target 'blackfin'

        # Blackfin Options

        gnu_machine_option :flag => '-mcpu', :equals => true do |flag,value|
          if value.kind_of?(Array)
            case value.length
            when 1
              ["#{flag}=#{value[0]}"]
            when 2
              ["#{flag}=#{value[0]}-#{value[1]}"]
            end
          else
            ["#{flag}=#{value}"]
          end
        end

        gnu_machine_option :flag => '-msim'
        gnu_machine_option :flag => '-momit-leaf-frame-pointer'
        gnu_machine_option :flag => '-mno-omit-leaf-frame-pointer'
        gnu_machine_option :flag => '-mspecld-anomaly'
        gnu_machine_option :flag => '-mno-specld-anomaly'
        gnu_machine_option :flag => '-mcsync-anomaly'
        gnu_machine_option :flag => '-mno-csync-anomaly'
        gnu_machine_option :flag => '-mlow-64k'
        gnu_machine_option :flag => '-mno-low64k'
        gnu_machine_option :flag => '-mstack-check-l1'
        gnu_machine_option :flag => '-mid-shared-library'
        gnu_machine_option :flag => '-mno-id-shared-library'
        gnu_machine_option :flag => '-mshared-library-id', :equals => true
        gnu_machine_option :flag => '-mleaf-id-shared-library'
        gnu_machine_option :flag => '-mno-leaf-id-shared-library'
        gnu_machine_option :flag => '-msep-data'
        gnu_machine_option :flag => '-mno-sep-data'
        gnu_machine_option :flag => '-mlong-calls'
        gnu_machine_option :flag => '-mno-long-calls'
        gnu_machine_option :flag => '-mfast-fp'
        gnu_machine_option :flag => '-minline-plt'

      end
    end
  end
end
