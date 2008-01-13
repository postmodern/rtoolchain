require 'rtoolchain/gnu/binutil_task'

module RToolchain
  module GNU
    class ReadELFTask < BinutilTask

      # ReadELF options

      long_option :flag => '--all'
      long_option :flag => '--file-header'
      long_option :flag => '--program-headers'
      long_option :flag => '--section-headers'
      long_option :flag => '--section-groups'
      long_option :flag => '--section-details'
      long_option :flag => '--symbols'
      long_option :flag => '--headers'
      long_option :flag => '--notes'
      long_option :flag => '--relocs'
      long_option :flag => '--unwind'
      long_option :flag => '--dynamic'
      long_option :flag => '--version-info'
      long_option :flag => '--arch-specific'
      long_option :flag => '--use-dynamic'
      long_option :flag => '--hex-dump', :equals => true
      long_option :flag => '--debug-dump', :equals => true
      long_option :flag => '--histogram'
      long_option :flag => '--version'
      long_option :flag => '--help'

      non_option :name => :elffiles, :multiple => true

    end
  end
end
