require 'rtoolchain/task'

module RToolchain
  module GNU
    class StringsTask < Task

      # Strings options

      long_option :flag => '--all'
      long_option :flag => '--print-file-name'
      long_option :flag => '--help'
      long_option :flag => '--bytes', :equals => true
      long_option :flag => '--radix', :equals => true
      long_option :flag => '--encoding', :equals => true
      long_option :flag => '--target', :equals => true
      long_option :flag => '--version'

      non_option :name => :files, :multiple => true

    end
  end
end
