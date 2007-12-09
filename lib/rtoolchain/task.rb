require 'rtoolchain/options'

module RToolchain
  class Task

    include Options

    def initialize(options={},&block)
      @subtasks = {}
      @options = options

      block.call(self) if block
    end

    def self.arguments(options={},&block)
      self.new(options,&block).arguments
    end

    def leading_non_options
      args = []

      # add the task leading non-options
      @options.each do |name,value|
        non_opt = get_non_option(name)

        if (non_opt && non_opt.leading)
          args += non_opt.arguments(value)
        end
      end

      # add all leading subtask non-options
      @subtasks.each_value do |task|
        args += task.leading_non_options
      end

      return args
    end

    def options
      args = []

      # add all subtask options
      @subtasks.each_value do |task|
        args += task.arguments
      end

      # add the task options
      @options.each do |name,value|
        opt = get_option(name)
        args += opt.arguments(value) if opt
      end

      return args
    end

    def tailing_non_options
      args = []

      # add all tailing subtask non-options
      @subtasks.each_value do |task|
        args += task.tailing_non_options
      end

      # add the task tailing non-options
      @options.each do |name,value|
        non_opt = get_non_option(name)

        if (non_opt && non_opt.tailing)
          args += non_opt.arguments(value)
        end
      end

      return args
    end

    def arguments
      leading_non_options + options + ['--'] + tailing_non_options
    end

    protected

    def Object.subtask(name,task)
      class_eval %{
        def #{name}(options={},&block)
          if @subtasks[#{name.dump}]
            @subtasks[#{name.dump}].options.merge!(options)

            block.call(@subtasks[#{name.dump}]) if block
          else
            @subtasks[#{name.dump}] = #{task}.new(options,&block)
          end

          return @subtasks[#{name.dump}]
        end
      }
    end

    def Object.non_option(opts={:name => nil, :leading => false, :tailing => false, :multiple => false})
      name = opts[:name].to_sym

      self.non_options[name] = NonOption.new(opts)

      class_def(name) do
        if opts[:multiple]
          @options[name] ||= []
        else
          @options[name]
        end
      end

      class_def("#{name}=") do |value|
        @options[name] = value
      end
    end

    def Object.long_option(opts={:flag => nil, :name => nil, :equals => false, :multiple => false},&block)
      flag = opts[:flag].to_s
      method_name = (opts[:name] || Task.flag_namify(flag)).to_sym

      self.options[method_name] = Option.new(opts,&block)

      class_def(method_name) do
        if opts[:multiple]
          @options[method_name] ||= []
        else
          @options[method_name]
        end
      end

      class_def("#{method_name}=") do |value|
        @options[method_name] = value
      end
    end

    def Object.short_option(opts={:flag => nil, :name => nil, :equals => false, :multiple => nil},&block)
      method_name = opts[:name].to_sym

      self.options[method_name] = Option.new(opts,&block)

      class_def(method_name) do
        if opts[:multiple]
          @options[method_name] ||= []
        else
          @options[method_name]
        end
      end

      class_def("#{method_name}=") do |value|
        @options[method_name] = value
      end
    end

    def Task.flag_namify(flag)
      flag = flag.to_s

      # remove leading dashes
      if flag =~ /^--/
        method_name = flag[2..-1]
      elsif flag =~ /^-/
        method_name = flag[1..-1]
      else
        method_name = flag
      end

      # replace remaining dashes with underscores
      return method_name.gsub(/[-.]/,'_')
    end

  end
end
