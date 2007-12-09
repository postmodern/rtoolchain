require 'rtoolchain/task'

module RToolchain
  module GNU
    class ObjdumpTask < Task

      # Strings options

      long_option :flag => '--archive-header'
      long_option :flag => '--adjust-vma', :equals => true
      long_option :flag => '--target', :equals => true
      long_option :flag => '--demangle', :equals => true
      long_option :flag => '--debugging'
      long_option :flag => '--debugging-tags', :equals => true
      long_option :flag => '--disassemble'
      long_option :flag => '--disassemble-all'
      long_option :flag => '--prefix-addresses'
      long_option :flag => '-EB', :name => :big_endian
      long_option :flag => '-EL', :name => :little_endian
      long_option :flag => '--endian', :equals => true
      long_option :flag => '--file-headers'
      long_option :flag => '--file-start-context'
      long_option :flag => '--headers'
      long_option :flag => '--help'
      long_option :flag => '--info'
      long_option :flag => '--section', :equals => true
      long_option :flag => '--line-numbers'
      long_option :flag => '--architecture', :name => :arch
      long_option :flag => '--disassembler-options', :equals => true
      long_option :flag => '--private-headers'
      long_option :flag => '--reloc'
      long_option :flag => '--dynamic-reloc'
      long_option :flag => '--full-contents'
      long_option :flag => '--source'
      long_option :flag => '--show-raw-insn'
      long_option :flag => '--no-show-raw-insn'
      long_option :flag => '--dwarf'
      long_option :flag => '--stabs'

      long_option :flag => '--start-address', :equals => true do |flag,value|
        ["#{flag}=#{'0x%x' % value}"]
      end

      long_option :flag => '--stop-address', :equals => true do |flag,value|
        ["#{flag}=#{'0x%x' % value}"]
      end

      long_option :flag => '--syms'
      long_option :flag => '--dynamic-syms'
      long_option :flag => '--special-syms'
      long_option :flag => '--version'
      long_option :flag => '--all-headers'
      long_option :flag => '--wide'
      long_option :flag => '--disassemble-zeros'

      non_option :name => :objfiles, :multiple => true

    end
  end
end
