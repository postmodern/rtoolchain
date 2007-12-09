require 'rtoolchain/task'

module RToolchain
  module GNU
    class NMTask < Task

      # NM options

      long_option :flag => '--print-file-name'
      long_option :flag => '--debug-syms'
      long_option :flag => '--demangle', :equals => true
      long_option :flag => '--no-demangle'
      long_option :flag => '--dynamic'
      long_option :flag => '--format', :equals => true
      long_option :flag => '--extern-only'
      long_option :flag => '--line-numbers'
      long_option :flag => '--numeric-sort'
      long_option :flag => '--no-sort'
      long_option :flag => '--print-size'
      long_option :flag => '--print-armap'
      long_option :flag => '--reverse-sort'
      long_option :flag => '--size-sort'
      long_option :flag => '--special-syms'
      long_option :flag => '--radix', :equals => true
      long_option :flag => '--target', :equals => true
      long_option :flag => '--undefined-only'
      long_option :flag => '--defined-only'
      long_option :flag => '--version'
      long_option :flag => '--help'

      non_option :name => :objfiles, :multiple => true

    end
  end
end
