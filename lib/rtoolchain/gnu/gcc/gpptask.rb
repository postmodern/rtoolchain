require 'rtoolchain/gnu/gcc/gcctask'

module RToolchain
  module GNU
    class GPPTask < GCCTask

      # Options Controlling C++ Dialect

      long_option :flag => '-fabi-version', :equals => true, :name => :abi_version
      long_option :flag => '-fno-access-control', :name => :disable_access_control
      long_option :flag => '-fcheck-new', :name => :check_new
      long_option :flag => '-fconserve-space', :name => :conserve_space
      long_option :flag => '-ffriend-injection', :name => :friend_injection
      long_option :flag => '-fno-const-strings', :name => :disable_const_strings
      long_option :flag => '-fno-elide-constructors', :name => :disable_elide_constructors
      long_option :flag => '-fno-enforce-eh-specs', :name => :disable_eh_specs
      long_option :flag => '-ffor-scope', :name => :enable_for_scope
      long_option :flag => '-fno-for-scope', :name => :disable_for_scope
      long_option :flag => '-fno-gnu-keywords', :name => :ignore_gnu_keywords
      long_option :flag => '-fno-implicit-templates', :name => :ignore_implicit_templates
      long_option :flag => '-fno-implicit-inline-templates', :name => :ignore_implicit_inline_templates
      long_option :flag => '-fno-implement-inlines', :name => :ignore_implement_inlines
      long_option :flag => '-fnonansi-builtins', :name => :disable_nonansi_builtins
      long_option :flag => '-fno-operator-names', :name => :disable_operator_names
      long_option :flag => '-fno-optional-diags', :name => :disable_diaognostics
      long_option :flag => '-fpermissive', :name => :enable_permissive_diagnostics
      long_option :flag => '-frepo', :name => :repo
      long_option :flag => '-fno-rtti', :name => :disable_rtti
      long_option :flag => '-fstats', :name => :enable_statistics

      long_option :flag => '-ftemplate-depth', :name => :max_template_depth do |flag,value|
        ["#{flag}-#{value}"]
      end

      long_option :flag => '-fno-threadsafe-statics', :name => :disable_threadsafe_statics
      long_option :flag => '-fuse-cxa-atexit', :name => :use_cxa_atexit
      long_option :flag => '-fvisibility-inlines-hidden', :name => :visibility_inlines_hidden
      long_option :flag => '--fno-weak', :name => :disable_weak_symbols
      long_option :flag => '-nostdinc++', :name => :disable_standard_cpp_header_search

      long_option :flag => '-fno-default-inline', :name => :disable_default_inline
      gnu_warning :flag => '-Wabi'
      gnu_warning :flag => '-Wctor-dtor-privacy'
      gnu_warning :flag => '-Wnon-virtual-dtor'
      gnu_warning :flag => '-Wreorder'

      gnu_warning :flag => '-Weffc++', :name => :warn_effective_cpp
      gnu_warning :flag => '-Wno-deprecated'
      gnu_warning :flag => '-Wstrict-null-sentinel'
      gnu_warning :flag => '-Wno-non-template-friend'
      gnu_warning :flag => '-Woverloaded-virtual'
      gnu_warning :flag => '-Wno-pmf-conversions'
      gnu_warning :flag => '-Wsign-promo'

      gnu_warning :flag => '-Wno-invalid-offsetof'

      # Option for Debugging Your Program or G++

      long_option :flag => '-fdump-translation-unit' do |flag,value|
        ["#{flag}-#{value}"]
      end

      long_option :flag => '-fdump-class-hierarchy' do |flag,value|
        ["#{flag}-#{value}"]
      end

    end
  end
end
