require 'rtoolchain/task'

module RToolchain
  class NASMTask < Task

    # NASM options

    short_option :flag => '-h', :name => :help
    short_option :flag => '-a', :name => :disable_macros
    short_option :flag => '-e', :name => :disable_assmebly
    short_option :flag => '-M', :name => :make_dependencies
    short_option :flag => '-E', :name => :error_log
    short_option :flag => '-v', :name => :version
    short_option :flag => '-f', :name => :format
    short_option :flag => '-o', :name => :output
    short_option :flag => '-l', :name => :assembly_listing_log
    short_option :flag => '-s', :name => :disable_stderr

    # NASM warning options

    short_option :flag => '-w+', :multiple => true, :name => :warnings do |flag,value|
      ["#{flag}#{value}"]
    end

    short_option :flag => '-w-', :multiple => true, :name => :ignore_warnings do |flag,value|
      ["#{flag}#{value}"]
    end

    protected

    def Object.nasm_warning(flag)
      flag = flag.to_s
      name = flag.gsub(/-/,'_')

      long_option :flag => "-w+#{flag}", :name => "warn_#{name}"
      long_option :flag => "-w-#{flag}", :name => "ignore_#{name}_warnings"
    end

    nasm_warning 'macro-params'
    nasm_warning 'macro-selfref'
    nasm_warning 'orphan-labels'
    nasm_warning 'number-overflow'
    nasm_warning 'gnu-elf-extension'

    short_option :flag => '-I', :name => :include_directory
    short_option :flag => '-P', :name => :preinclude
    short_option :flag => '-D', :name => :define
    short_option :flag => '-U', :name => :undefine

    non_option :name => :files, :multiple => true

  end
end
