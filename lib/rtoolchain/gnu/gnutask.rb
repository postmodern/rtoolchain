require 'rtoolchain/task'

module RToolchain
  module GNU
    class GNUTask < Task

      protected

      def Object.gnu_feature(opts={},&block)
        unless opts[:name]
          if opts[:flag] =~ /^-fno-/
            opts[:name] = opts[:flag].gsub(/^-fno-/,'disable_')
          elsif opts[:flag] =~ /^-f/
            opts[:name] = opts[:flag].gsub(/^-f/,'enable_')
          end

          opts[:name].gsub!(/-/,'_')
        end

        long_option(opts,&block)
      end

      def Object.gnu_debugging(opts={},&block)
        unless opts[:name]
          if opts[:flag] =~ /^-g/
            opts[:name] = opts[:flag].gsub(/^-g/,'debug').gsub(/-/,'_')
          end
        end

        long_option(opts,&block)
      end

      def Object.gnu_warning(opts={},&block)
        unless opts[:name]
          if opts[:flag] =~ /^-Wno-/
            opts[:name] = opts[:flag].gsub(/^-Wno-/,'ignore_')+'_warnings'
          elsif opts[:flag] =~ /^-W/
            opts[:name] = opts[:flag].gsub(/^-W/,'warn_')
          end

          opts[:name].gsub!(/-/,'_')
        end

        long_option(opts,&block)
      end

      def Object.gnu_machine_option(opts={},&block)
        unless opts[:name]
          if opts[:flag] =~ /^-mno-/
            opts[:name] = opts[:flag].gsub(/^-mno-/,'no_')
          elsif opts[:flag] =~ /^-m/
            opts[:name] = opts[:flag].gsub(/^-m/,'')
          end

          opts[:name].gsub!(/-/,'_')
        end

        long_option(opts,&block)
      end

    end
  end
end
