require 'rtoolchain/gnu/gcc/gcctask'
require 'rtoolchain/gnu/gnutask'

module RToolchain
  module Targets
    class GCCTarget < GNUTask

      protected

      def self.target(name)
        GCCTask.support_target(name,self)
      end

    end
  end
end
