require 'rtoolchain/nasm/nasm'

module RToolchain
  def RToolchain.nasm(options={},&block)
    @nasm ||= NASM.native

    return @nasm.assemble(options,&block)
  end
end
