require 'rtoolchain/gnu/gnu_task'

module RToolchain
  module GNU
    class GCCTask < GNUTask

      def initialize(options={},&block)
        super(options,&block)
      end

      # Options Controlling the Kind of Output

      short_option :flag => '-x', :name => :language
      long_option :flag => '-pass-exit-codes'
      short_option :flag => '-c', :name => :stop_after_assembling
      short_option :flag => '-S', :name => :stop_after_proper
      short_option :flag => '-E', :name => :stop_after_preprcoessing
      short_option :flag => '-o', :name => :output
      short_option :flag => '-v', :name => :verbose
      long_option :flag => '-pipe'
      long_option :flag => '-combine', :name => :combine_source_files
      long_option :flag => '--help'
      long_option :flag => '--target-help'
      long_option :flag => '--version'

      # Options Controlling C Dialect

      long_option :flag => '-ansi'
      long_option :flag => '-std', :equals => true
      long_option :flag => '-aux-info'
      gnu_feature :flag => '-fno-asm', :name => :disable_asm_keywords

      gnu_feature :flag => '-fno-builtin', :multiple => true, :name => :disable_builtin_functions do |flag,value|
        ["#{flag}-#{value}"]
      end

      gnu_feature :flag => '-fhosted', :name => :hosted_environment
      gnu_feature :flag => '-ffreestanding', :name => :freestanding_environment
      gnu_feature :flag => '-fms-exensions'
      long_option :flag => '-trigraphs'
      long_option :flag => '-no-integrated-cpp', :name => :disable_integrated_cpp
      long_option :flag => '-traditional'
      gnu_feature :flag => '-fconf-mismatch'
      gnu_feature :flag => '-funsigned-char'
      gnu_feature :flag => '-fsigned-char'
      gnu_feature :flag => '-fsigned-bitfields'
      gnu_feature :flag => '-funsigned-bitfields'
      gnu_feature :flag => '-fno-signed-bitfields'
      gnu_feature :flag => '-fno-unsigned-bitfields'

      # Options to Control Diagnostic Messages Formatting

      gnu_feature :flag => '-fmessage-length', :equals => true, :name => :max_error_message_length
      gnu_feature :flag => '-fdiagnostics-show-location', :equals => true, :name => :diagnostic_show_location
      gnu_feature :flag => '-fdiagnostics-show-options', :name => :diagnostics_show_options

      # Options to Request or Suppress Warnings

      gnu_feature :flag => '-fsyntax-only', :name => :only_check_syntax
      long_option :flag => '-pedantic'
      long_option :flag => '-pedantic-errors'
      short_option :flag => '-w', :name => :inhibit_warnings

      gnu_warning :flag => '-Wno-import'
      gnu_warning :flag => '-Wchar-subscripts'
      gnu_warning :flag => '-Wcomment'
      gnu_warning :flag => '-Wfatal-errors'
      gnu_warning :flag => '-Wformat', :equals => true
      gnu_warning :flag => '-Wformat-y2k'
      gnu_warning :flag => '-Wno-format-extra-args'
      gnu_warning :flag => '-Wno-format-zero-length'
      gnu_warning :flag => '-Wformat-nonliteral'
      gnu_warning :flag => '-Wformat-security'
      gnu_warning :flag => '-Wnonnull'
      gnu_warning :flag => '-Winit-self'
      gnu_warning :flag => '-Wimplicit-int'
      gnu_warning :flag => '-Wimplicit-function-declaration'
      gnu_warning :flag => '-Werror-implicit-function-declaration'
      gnu_warning :flag => '-Wimplicit'
      gnu_warning :flag => '-Wmain'
      gnu_warning :flag => '-Wmissing-braces'
      gnu_warning :flag => '-Wmissing-include-dirs'
      gnu_warning :flag => '-Wparentheses'
      gnu_warning :flag => '-Wsequence-point'
      gnu_warning :flag => '-Wreturn-type'
      gnu_warning :flag => '-Wswitch'
      gnu_warning :flag => '-Wswitch-default'
      gnu_warning :flag => '-Wswitch-enum'
      gnu_warning :flag => '-Wtrigraphs'
      gnu_warning :flag => '-Wunused-function'
      gnu_warning :flag => '-Wunused-label'
      gnu_warning :flag => '-Wunused-parameter'
      gnu_warning :flag => '-Wunused-variable'
      gnu_warning :flag => '-Wunused-value'
      gnu_warning :flag => '-Wunused'
      gnu_warning :flag => '-Wuninitialized'
      gnu_warning :flag => '-Wunknown-pragmas'
      gnu_warning :flag => '-Wno-pragmas'
      gnu_warning :flag => '-Wstrict-aliasing'
      gnu_warning :flag => '-Wall'

      gnu_warning :flag => '-Wextra'
      gnu_warning :flag => '-Wno-div-by-zero'
      gnu_warning :flag => '-Wsystem-headers'
      gnu_warning :flag => '-Wfloat-equal'
      gnu_warning :flag => '-Wtraditional'
      gnu_warning :flag => '-Wdeclaration-after-statement'
      gnu_warning :flag => '-Wundef'
      gnu_warning :flag => '-Wno-endif-labels'
      gnu_warning :flag => '-Wshadow'

      gnu_warning :flag => '-Wlarger-than' do |flag,value|
        ["#{flag}-#{value}"]
      end

      gnu_warning :flag => '-Wunsafe-loop-optimizations'
      gnu_warning :flag => '-Wpointer-arith'
      gnu_warning :flag => '-Wbad-function-cast'
      gnu_warning :flag => '-Wc++-compat', :name => :warn_cpp_compat
      gnu_warning :flag => '-Wcast-qual'
      gnu_warning :flag => '-Wcast-align'
      gnu_warning :flag => '-Wwrite-strings'
      gnu_warning :flag => '-Wconversion'
      gnu_warning :flag => '-Wsign-compare'
      gnu_warning :flag => '-Waggregate-return'
      gnu_warning :flag => '-Wno-attributes'
      gnu_warning :flag => '-Wstrict-prototypes'
      gnu_warning :flag => '-Wold-style-definition'
      gnu_warning :flag => '-Wmissing-prototypes'
      gnu_warning :flag => '-Wmissing-declarations'
      gnu_warning :flag => '-Wmissing-field-initializers'
      gnu_warning :flag => '-Wmissing-noreturn'
      gnu_warning :flag => '-Wmissing-format-attribute'
      gnu_warning :flag => '-Wno-multichar'
      gnu_warning :flag => '-Wnormalized', :equals => true
      gnu_warning :flag => '-Wno-deprecated-declarations'
      gnu_warning :flag => '-Wpacked'
      gnu_warning :flag => '-Wpadded'
      gnu_warning :flag => '-Wredundant-decls'
      gnu_warning :flag => '-Wnested-externs'
      gnu_warning :flag => '-Wunreachable-code'
      gnu_warning :flag => '-Winline'
      gnu_warning :flag => '-Wno-int-to-pointer-cast'
      gnu_warning :flag => '-Wno-pointer-to-int-cast'
      gnu_warning :flag => '-Winvalid-pch'
      gnu_warning :flag => '-Wlong-long'
      gnu_warning :flag => '-Wvariadic-macros'
      gnu_warning :flag => '-Wvolatile-register-var'
      gnu_warning :flag => '-Wdisabled-optimization'
      gnu_warning :flag => '-Wpointer-sign'
      gnu_warning :flag => '-Werror'
      gnu_warning :flag => '-Wstack-protector'

      # Options for Debugging Your Program or GCC

      gnu_debugging :flag => '-g', :name => :enable_debugging
      gnu_debugging :flag => '-ggdb'
      gnu_debugging :flag => '-gstabs'
      gnu_debugging :flag => '-feliminate-unused-debug-symbols'
      gnu_debugging :flag => '-gstabs+', :name => :gstabs_plus
      gnu_debugging :flag => '-gcoff'
      gnu_debugging :flag => '-gxcoff'
      gnu_debugging :flag => '-gxcoff+', :name => :gxcoff_plus
      gnu_debugging :flag => '-gdwarf-2', :name => :gdwarf2
      gnu_debugging :flag => '-gvms'
      gnu_feature :flag => '-feliminate-dwarf2-dups', :name => :eliminate_dwarf2_dups
      short_option :flag => '-p', :name => :profile_for_prof
      short_option :flag => '-pg', :name => :profile_for_gprof
      short_option :flag => '-Q', :name => :function_statistics
      gnu_feature :flag => '-ftime-report'
      gnu_feature :flag => '-fmem-report'
      gnu_feature :flag => '-fprofile-arcs'
      long_option :flag => '--coverage'
      gnu_feature :flag => '-ftest-coverage'

      gnu_feature :flag => '-fdump-rtl' do |flag,opt|
        ["#{flag}-#{opt}"]
      end

      gnu_feature :flag => '-fdump-unnumbered'

      gnu_feature :flag => '-fdump-ipa' do |flag,opt|
        ["#{flag}-#{opt}"]
      end

      gnu_feature :flag => '-fdump-tree' do |flag,opts|
        case opts.length
        when 2 then ["#{flag}-#{opts[0]}-#{opts[1]}"]
        when 1 then ["#{flag}-#{opts[0]}"]
        end
      end

      gnu_feature :flag => '-ftree-vectorizer-verbose', :equals => true
      gnu_feature :flag => '-frandom-seed', :equals => true
      gnu_feature :flag => '-fsched-verbose', :equals => true
      long_option :flag => '-save-temps'
      long_option :flag => '-time', :name => :time_subprocesses
      gnu_feature :flag => '-fvar-tracking'
      long_option :flag => '-print-file-name', :equals => true
      long_option :flag => '-print-multi-directory'
      long_option :flag => '-print-multi-lib'
      long_option :flag => '-print-prog-name', :equals => true
      long_option :flag => '-print-libgcc-file-name'
      long_option :flag => '-print-search-dirs'
      long_option :flag => '-dumpmachine'
      long_option :flag => '-dumpversion'
      long_option :flag => '-dumpspecs'
      gnu_feature :flag => '-feliminate-unused-debug-types'

      # Options That Control Optimization

      short_option :flag => '-O', :name => :optimize do |flag,value|
        ["#{flag}#{value}"]
      end

      gnu_feature :flag => '-fno-default-inline'
      gnu_feature :flag => '-fno-defer-pop'
      gnu_feature :flag => '-fforce-mem'
      gnu_feature :flag => '-fforce-addr'
      gnu_feature :flag => '-fomit-frame-pointer'
      gnu_feature :flag => '-foptimize-sibling-calls'
      gnu_feature :flag => '-fno-inline'
      gnu_feature :flag => '-finline-functions'
      gnu_feature :flag => '-finline-functions-called-once'
      gnu_feature :flag => '-fearly-inlining'
      gnu_feature :flag => '-finline-limit', :equals => true
      gnu_feature :flag => '-fkeep-inline-functions'
      gnu_feature :flag => '-fkeep-static-consts'
      gnu_feature :flag => '-fmerge-constants'
      gnu_feature :flag => '-fmerge-all-constants'
      gnu_feature :flag => '-fmodulo-sched'
      gnu_feature :flag => '-fno-branch-count-reg'
      gnu_feature :flag => '-fno-function-cse'
      gnu_feature :flag => '-fno-zero-initialized-in-bss'
      gnu_feature :flag => '-fbounds-check'
      gnu_feature :flag => '-fmudflap'
      gnu_feature :flag => '-fmudflapth'
      gnu_feature :flag => '-fmudflapir'
      gnu_feature :flag => '-fstrength-reduce'
      gnu_feature :flag => '-fthread-jumps'
      gnu_feature :flag => '-fcse-follow-jumps'
      gnu_feature :flag => '-fcse-skip-blocks'
      gnu_feature :flag => '-frerun-cse-after-loop'
      gnu_feature :flag => '-frerun-loop-opt'
      gnu_feature :flag => '-fgcse'
      gnu_feature :flag => '-fgcse-lm'
      gnu_feature :flag => '-fgcse-sm'
      gnu_feature :flag => '-fgcse-las'
      gnu_feature :flag => '-fgcse-after-reload'
      gnu_feature :flag => '-floop-optimize'
      gnu_feature :flag => '-floop-optimize2'
      gnu_feature :flag => '-funsafe-loop-optimizations'
      gnu_feature :flag => '-fcrossjumping'
      gnu_feature :flag => '-fif-conversion'
      gnu_feature :flag => '-fif-conversion2'
      gnu_feature :flag => '-fdelete-null-pointer-checks'
      gnu_feature :flag => '-fexpensive-optimizations'
      gnu_feature :flag => '-foptimize-register-move'
      gnu_feature :flag => '-fdelayed-branch'
      gnu_feature :flag => '-fschedule-insns'
      gnu_feature :flag => '-fschedule-insns2'
      gnu_feature :flag => '-fno-sched-interblock'
      gnu_feature :flag => '-fno-sched-spec'
      gnu_feature :flag => '-fsched-spec-load'
      gnu_feature :flag => '-fsched-spec-load-dangerous'
      gnu_feature :flag => '-fsched-stalled-insns', :equals => true
      gnu_feature :flag => '-fsched-stalled-insns-dep', :equals => true
      gnu_feature :flag => '-fsched2-use-superblocks'
      gnu_feature :flag => '-fsched2-use-traces'
      gnu_feature :flag => '-freschedule-modulo-scheduled-loops'
      gnu_feature :flag => '-fcaller-saves'
      gnu_feature :flag => '-ftree-pre'
      gnu_feature :flag => '-ftree-fre'
      gnu_feature :flag => '-ftree-copy-prop'
      gnu_feature :flag => '-ftree-store-copy-prop'
      gnu_feature :flag => '-ftree-salias'
      gnu_feature :flag => '-ftree-sink'
      gnu_feature :flag => '-ftree-ccp'
      gnu_feature :flag => '-ftree-store-ccp'
      gnu_feature :flag => '-ftree-dce'

      non_option :name => :files, :multiple => true

    end
  end
end
