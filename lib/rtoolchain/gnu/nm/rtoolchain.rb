require 'rtoolchain/gnu/nm/nm'

module RToolchain
  def RToolchain.nm(options={},&block)
    @gnu_nm ||= GNU::NM.native

    return @gnu_nm.list(options,&block)
  end
end
