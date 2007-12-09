module RToolchain
  module GNU
    def GNU.support(target)
      Assemblers.support(target)
      Compilers.support(target)

      return nil
    end

    def GNU.support_arch(arch)
      Assemblers.support_arch(arch)
      Compilers.support_arch(arch)

      return nil
    end

    def GNU.support_os(os)
      Assemblers.support_os(os)
      Compilers.support_os(os)

      return nil
    end
  end
end
