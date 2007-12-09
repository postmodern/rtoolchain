require 'rtoolchain/targets/gastarget'

module RToolchain
  module Targets
    module GAS
      class JavaPico < GASTarget

        target 'java_pico'

        # options for a Java-pico processor

        gnu_machine_option :flag => '-mb', :name => :java_big_endian
        gnu_machine_option :flag => '-ml', :name => :java_little_endian

      end
    end
  end
end
