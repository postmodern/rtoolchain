require 'rtoolchain/extensions/meta'
require 'rtoolchain/targets/exceptions/unknowntarget'

module RToolchain
  module Targetable
    def self.targets
      @@targets ||= []
    end

    def self.supports_target?(name)
      targets.include?(name.to_s)
    end

    def self.support_target(name,klass)
      name = name.to_s

      targets << name
      subtask(name,klass)
    end

    def self.enable_target(name)
      Targets.enable_target(program_name,name)

      unless supports_target?(name)
        raise(UnknownTarget,"unknown target '#{name}'",caller)
      end
    end

    def supports_target?(name)
      self.class.supports_target?(name)
    end

    def enable_target(name)
      self.class.enable_target(name)
    end

    protected

    def method_missing(sym,*args,&block)
      name = sym.id2name

      if args.length==1
        enable_target(name)

        unless public_methods.include?(name)
          raise(UnknownTarget,"unknown target '#{name}'")
        end

        return send(name,args[0],&block)
      end

      raise(NoMethodError,name)
    end
  end
end
