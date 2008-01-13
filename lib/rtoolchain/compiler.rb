require 'rprogram/program'

module RToolchain
  class Compiler < RProgram::Program

    # Supported platform
    attr_reader :platform

    # Supported architectures
    attr_reader :archs

    #
    # Creates a new Compiler object with the given program _path_
    # and the supported _platform_. The compiler's supported
    # architectures may be optionally specified in _archs_.
    #
    #   Compiler.new('/usr/bin/gcc','linux')
    #   Compiler.new('/usr/bin/gcc','freebsd',['i386','i686'])
    #
    def initialize(path,platform,archs=[])
      super(path)

      @platform = platform.to_s
      @archs = archs.map { |name| name.to_s }
    end

    def self.native
      self.create(Compat.platform,[Compat.arch])
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
