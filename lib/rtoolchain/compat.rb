require 'rprogram/compat'

module RToolchain
  module Compat
    include RProgram::Compat

    #
    # Returns the native _architecture_.
    #
    #   Compat.arch  #=> "x86"
    #
    def Compat.arch
      RUBY_PLATFORM.split('-').first
    end
  end
end
