require 'rtoolchain/gnu/gcc/gcc'
require 'rtoolchain/gnu/gcc/gpp'

module RToolchain
  def RToolchain.gcc(options={},&block)
    @gcc ||= GNU::GCC.native

    return @gcc.compile(options,&block)
  end

  def RToolchain.gpp(options={},&block)
    @gpp ||= GNU::GPP.native

    return @gpp.compile(options,&block)
  end
end
