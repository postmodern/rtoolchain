require 'rtoolchain/targets/exceptions/unknown_target'

module RToolchain
  module Targets
    def Targets.enable_target(program,name)
      program = prgram.to_s
      unless program =~ /\./
        raise(UnknownTarget,"unknown program '#{program}'",caller)
      end

      name = name.to_s
      unless name =~ /\./
        raise(UnknownTarget,"unknown target '#{name}'",caller)
      end

      target_path = File.join(File.dirname(__FILE__),program,"#{name}.rb")
      unless File.file?(target_path)
        raise(UnknownTarget,"unknown proram '#{program}' and target '#{name}'",caller)
      end

      require target_path
    end
  end
end
