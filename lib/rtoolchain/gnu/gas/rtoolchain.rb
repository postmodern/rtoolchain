require 'rtoolchain/gnu/gas/gas'

module RToolchain
  def RToolchain.gas(options={},&block)
    @gas ||= GNU::GAS.native

    return @gas.assemble(options,&block)
  end
end
