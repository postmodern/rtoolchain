require 'rtoolchain/assembler'
require 'rtoolchain/nasm/nasmtask'

module RToolchain
  class NASM < Assembler

    name_program :nasm

    def initialize(path,archs=[])
      super(path,archs)
    end

    def assemble(options={},&block)
      run_task(NASMTask.new(options,&block))
    end

  end
end
