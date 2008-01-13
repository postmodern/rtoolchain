require 'rtoolchain/gnu/binutil_task'

module RToolchain
  module GNU
    class LDTask < BinutilTask

      long_option :flag => '--architecture', :equals => true
      long_option :flag => '--format', :equals => true
      long_option :flag => '--mri-script', :equals => true
      long_option :flag => '--entry', :equals => true

      long_option :flag => '--exclude-libs' do |flag,libs|
        [flag, libs.join(',')]
      end

      long_option :flag => '--export-dynamic'
      short_option :flag => '-EB', :name => :big_endian
      short_option :flag => '-EL', :name => :little_endian
      long_option :flag => '--auxiliary'
      long_option :flag => '--filter'
      long_option :flag => '--fini'
      long_option :flag => '--gpsize', :equals => true
      long_option :flag => '--soname', :equals => true
      short_option :flag => '-i', :name => :incremental_link
      long_option :flag => '-init'

      long_option :flag => '--library', :equals => true, :multiple => true
      long_option :flag => '--library-path', :equals => true, :multiple => true

      short_option :flag => '-m', :name => :emulation do |flag,emul|
        ["#{flag}#{emul}"]
      end

      long_option :flag => '--print-map'
      long_option :flag => '--nmagic'
      long_option :flag => '--omagic'
      long_option :flag => '--no-omagic'

      long_option :flag => '--output', :equals => true

      short_option :flag => '-O', :name => :optimization

      long_option :flag => '--emit-relocs'
      long_option :flag => '--force-dynamic'
      long_option :flag => '--relocatable'

      long_option :flag => '--just-symbols', :equals => true, :multiple => true

      long_option :flag => '--strip-all'
      long_option :flag => '--strip-debug'
      long_option :flag => '--trace'

      long_option :flag => '--script', :name => :linker_script, :equals => true
      long_option :flag => '--default-script', :name => :default_linker_script, :equals => true
      long_option :flag => '--undefined', :equals => true, :multiple => true
      long_option :flag => '--unique', :equals => true, :multiple => true

      long_option :flag => '--version'

      long_option :flag => '--discard-all', :name => :discard_all_symbols
      long_option :flag => '--discard-locals', :name => :discard_local_symbols
      long_option :flag => '--trace-symbol', :equals => true, :multiple => true
      short_option :flag => '-z', :name => :keyword
      long_option :flag => '--group' do |flag,archives|
        [flag] + archives + ['--end-group']
      end

      long_option :flag => '--accept-unknown-input-arch'
      long_option :flag => '--no-accept-unknown-input-arch'
      long_option :flag => '--as-needed'
      long_option :flag => '--no-as-needed'
      long_option :flag => '--add-needed'
      long_option :flag => '--no-add-needed'

      long_option :flag => '-call_shared', :name => :link_against_dynamic_libs

      long_option :flag => '-Bgroup'
      long_option :flag => '-static'
      long_option :flag => '-Bsymbolic'
      long_option :flag => '-Bsymbolic-functions'
      long_option :flag => '--dynamic-list', :equals => true
      long_option :flag => '--dynamic-list-data'
      long_option :flag => '--dynamic-list-cpp-new'
      long_option :flag => '--dynamic-list-cpp-typeinfo'
      long_option :flag => '--check-sections'
      long_option :flag => '--no-check-sections'
      long_option :flag => '--cref', :name => :cross_ref_table
      long_option :flag => '--no-define-common'
      long_option :flag => '--defsym', :multiple => true
      long_option :flag => '--demangle'
      long_option :flag => '--no-demangle'
      long_option :flag => '--dynamic-linker'
      long_option :flag => '--fatal-warnings'
      long_option :flag => '--force-exe-suffix'
      long_option :flag => '--gc-sections'
      long_option :flag => '--no-gc-sections'
      long_option :flag => '--print-gc-sections'
      long_option :flag => '--no-print-gc-sections'

      long_option :flag => '--help'
      long_option :flag => '--target-help'
      long_option :flag => '-Map', :name => :print_link_map
      long_option :flag => '--no-keep-memory'
      long_option :flag => '--no-undefined'
      long_option :flag => '--allow-multiple-definition'
      long_option :flag => '--allow-shlib-undefined'
      long_option :flag => '--no-allow-shlib-undefined'
      long_option :flag => '--no-undefined-version'
      long_option :flag => '--default-symver'
      long_option :flag => '--default-imported-symver'
      long_option :flag => '--no-warn-mismatch'
      long_option :flag => '--no-warn-search-mismatch'
      long_option :flag => '--no-whole-archive'
      long_option :flag => '--noinhibit-exec'
      long_option :flag => '-nostdlib'
      long_option :flag => '--oformat', :name => :output_format
      long_option :flag => '--pic-executable'
      long_option :flag => '--relax'
      long_option :flag => '--retain-symbols-file'
      long_option :flag => '-rpath', :name => :runtime_dir
      long_option :flag => '-rpath-link', :name => :runtime_link_dir
      long_option :flag => '-Bshareable', :name => :shareable
      long_option :flag => '--sort-common'
      long_option :flag => '--sort-section'
      long_option :flag => '--split-by-file'
      long_option :flag => '--split-by-reloc'
      long_option :flag => '--stats'
      long_option :flag => '--sysroot', :equals => true
      long_option :flag => '--traditional-format'
      long_option :flag => '--section-start'
      long_option :flag => '--unresolved-symbols', :equals => true

      long_option :flag => '--verbose'
      long_option :flag => '--version-script', :equals => true
      long_option :flag => '--warn-common'
      long_option :flag => '--warn-constructors'
      long_option :flag => '--warn-multiple-gp'
      long_option :flag => '--warn-once'
      long_option :flag => '--warn-section-align'
      long_option :flag => '--warn-shared-textrel'
      long_option :flag => '--warn-unresolved-symbols'
      long_option :flag => '--error-unresolved-symbols'
      long_option :flag => '--whole-archive'
      long_option :flag => '--wrap', :name => :wrap_symbol
      long_option :flag => '--eh-frame-hdr', :name => :create_eb_frame_hdr
      long_option :flag => '--enable-new-dtags'
      long_option :flag => '--disable-new-dtags'

      long_option :flag => '--hash-size', :equals => true
      long_option :flag => '--hash-style', :equals => true
      long_option :flag => '--reduce-memory-overheads'
      long_option :flag => '--build-id', :equals => true
      long_option :flag => '--add-stdcall-alias'
      long_option :flag => '--base-file'
      long_option :flag => '--dll'
      long_option :flag => '--enable-stdcall-fixup'
      long_option :flag => '--disable-stdcall-fixup'
      long_option :flag => '--export-all-symbols'
      long_option :flag => '--exclude-symbols' do |flag,syms|
        [flag, syms.join(',')]
      end

      long_option :flag => '--file-alignment'
      long_option :flag => '--heap' do |flag,sizes|
        case sizes.length
        when 1 then [flag, sizes[0]]
        when 2 then [flag, "#{sizes[0]},#{sizes[1]}"]
        end
      end

      long_option :flag => '--image-base'
      long_option :flag => '--kill-at'
      long_option :flag => '--large-address-aware'
      long_option :flag => '--major-image-version'
      long_option :flag => '--major-os-version'
      long_option :flag => '--major-subsystem-version'
      long_option :flag => '--minor-image-version'
      long_option :flag => '--minor-os-version'
      long_option :flag => '--minor-subsystem-version'
      long_option :flag => '--output-def'
      long_option :flag => '--out-implib'
      long_option :flag => '--enable-auto-image-base'
      long_option :flag => '--disable-auto-image-base'
      long_option :flag => '--dll-search-prefix'
      long_option :flag => '--enable-auto-import'
      long_option :flag => '--disable-auto-import'
      long_option :flag => '--enable-runtime-pseudo-reloc'
      long_option :flag => '--disable-runtime-pseudo-reloc'
      long_option :flag => '--section-alignment'

      long_option :flag => '--stack' do |flag,sizes|
        case sizes.length
        when 1 then [flag, sizes[0]]
        when 2 then [flag, "#{sizes[0]},#{sizes[1]}"]
        end
      end

      long_option :flag => '--subsystem' do |flag,sys|
        case sys.length
        when 1 then [flag, sys[0]]
        when 2 then [flag, "#{sys[0]}:#{sys[1]}"]
        when 3 then [flag, "#{sys[0]}:#{sys[1]}.#{sys[2]}"]
        end
      end

      long_option :flag => '--no-trampoline'
      long_option :flag => '--bank-window'

      non_option :name => :objfiles, :multiple => true

    end
  end
end
