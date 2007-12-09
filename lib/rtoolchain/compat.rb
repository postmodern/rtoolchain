module RToolchain
  module Compat
    def Compat.arch
      RUBY_PLATFORM.split('-').first
    end

    def Compat.platform
      RUBY_PLATFORM.split('-').last
    end

    def Compat.PATH
      # return an empty array in case
      # the PATH variable does not exist
      return [] unless ENV['PATH']

      if Compat.platform =~ /mswin32/
        return ENV['PATH'].split(';')
      else
        return ENV['PATH'].split(':')
      end
    end

    def Compat.find_program(name)
      Compat.PATH.each do |dir|
        full_path = File.expand_path(File.join(dir,name))

        return full_path if File.file?(full_path)
      end

      return nil
    end

    def Compat.find_program_by_names(*names)
      names.map { |name| Compat.find_program(name) }.compact.first
    end
  end
end
