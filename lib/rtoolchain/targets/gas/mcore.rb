require 'rtoolchain/targets/gas_target'

module RToolchain
  module Targets
    module GAS
      class MCore < GASTarget

        target 'mcore'

        # options for the MCore processor

        long_option :flag => '-jsri2bsr', :name => :enable_jsri_to_bri
        long_option :flag => '-nojsri2bsr', :name => :disable_jsri_to_bri
        long_option :flag => '-sifilter', :name => :enable_silicon_filter
        long_option :flag => '-nosifilter', :name => :disable_silicon_filter
        long_option :flag => '-relax'

      end
    end
  end
end
