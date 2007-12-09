require 'rtoolchain/extensions/meta'
require 'rtoolchain/compat'

module RToolchain
  module Nameable

    def self.included(base)
      base.metaclass_eval do
        def program_name
          @program_name
        end

        def program_name=(name)
          @program_name = name.to_s
        end

        def program_aliases
          @program_aliases ||= []
        end

        def program_aliases=(aliases)
          @program_aliases = aliases.to_a.map { |name| name.to_s }
        end

        def find_program
          names = self.program_aliases
          names.unshift(self.program_name) if self.program_name

          return Compat.find_program_by_names(*names)
        end
      end
    end

    def program_name
      self.class.program_name
    end

    def program_aliases
      self.class.program_aliases
    end

    protected

    def Object.name_program(name)
      self.program_name = name
    end

    def Object.alias_program(*aliases)
      self.program_aliases = aliases
    end
  end
end
