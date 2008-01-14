require 'rtoolchain/gnu/gas/gastask'
require 'rtoolchain/gnu/gnutask'

module RToolchain
  module Targets
    class GASTarget < GNUTask

      protected

      def self.target(name)
        GASTask.support_target(name,self)
      end

      def self.gnu_extension(name)
        long_option :flag => "-m#{name}", :name => "enable_#{name}"
        long_option :flag => "-mno-#{name}", :name => "disable_#{name}"
      end

      def self.gnu_cpu(name)
        long_option :flag => "-m#{name}", :name => "cpu_#{name}"
      end

    end
  end
end
