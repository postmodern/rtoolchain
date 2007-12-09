require 'rtoolchain/gnu/ld/ld'

module RToolchain
  def RToolchain.gnu_ld(options={},&block)
    @gnu_ld ||= GNU::LD.native
    
    return @gnu_ld.link(options,&block)
  end
end
