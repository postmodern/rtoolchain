require 'rtoolchain/gnu/gnu_task'

module RToolchain
  module GNU
    class GASTask < GNUTask

      def initialize(options={},&block)
        @targets = {}

        super(options,&block)
      end

      # generic options

      long_option :flag => '--alternate'
      long_option :flag => '--debug-prefix-map'
      long_option :flag => '--defsym'
      short_option :flag => '-f', :name => :fast
      gnu_machine_option :flag => '-mdebug'
      long_option :flag => '-no-mdebug', :name => :disable_debugging
      long_option :flag => '--gen-debug', :name => :generate_debugging
      long_option :flag => '--gstabs'
      long_option :flag => '--gstabs+', :name => :gstabs_plus
      long_option :flag => '--gdwarf-2', :name => :gdwarf2

      long_option :flag => '--help'

      short_option :flag => '-I', :name => :include_dir
      short_option :flag => '-J', :name => :ignore_signed_overflow

      long_option :flag => '--keep-locals'
      long_option :flag => '--listing-lhs-width'
      long_option :flag => '--listing-lhs-width2'
      long_option :flag => '--listing-rhs-width'
      long_option :flag => '--listing-cont-width'

      short_option :flag => '-o', :name => :output 
      short_option :flag => '-R', :name => :fold_data

      long_option :flag => '--reduce-memory-overheads'
      long_option :flag => '--statistics'
      long_option :flag => '--strip-local-absolute'
      long_option :flag => '--version'
      long_option :flag => '--no-war', :name => :no_warnings
      long_option :flag => '--fatal-warnings', :name => :warnings_as_errors
      long_option :flag => '--warn', :name => :warnings
      short_option :flag => '-Z', :name => :force_output
      long_option :flag => '--target-help'

      short_option :flag => '-A', :name => :arch_variant do |flag,value|
        ["#{flag}#{value}"]
      end

      gnu_machine_option :flag => '-mcpu', :name => :cpu, :equals => true
      gnu_machine_option :flag => '-mtune', :name => :tune, :equals => true
      gnu_machine_option :flag => '-march', :name => :arch, :equals => true

      long_option :flag => '-EB', :name => :big_endian
      long_option :flag => '-EL', :name => :little_endian

      non_option :name => :files, :multiple => true

    end
  end
end
