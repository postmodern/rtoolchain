require 'rtoolchain/program'
require 'rtoolchain/nameable'

module RToolchain
  class Compiler < Program

    include Nameable

    # Supported platform
    attr_reader :platform

    # Supported architectures
    attr_reader :archs

    def initialize(path,platform,archs=[])
      super(path)

      @platform = platform.to_s
      @archs = archs.map { |name| name.to_s }
    end

    def self.native
      self.new(self.find_program,Compat.platform,[Compat.arch])
    end

    def supports?(platform,arch)
      (supports_platform?(platform) && supports_arch?(arch))
    end

    def supports_platform?(platform)
      @platform==platform.to_s
    end

    def supports_arch?(arch)
      @archs.include?(arch.to_s)
    end

  end
end
