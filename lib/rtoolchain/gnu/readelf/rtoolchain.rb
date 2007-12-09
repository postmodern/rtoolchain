require 'rtoolchain/gnu/readelf/readelf'

module RToolchain
  def RToolchain.readelf(options={},&block)
    @gnu_readelf ||= GNU::ReadELF.native

    return @gnu_readelf.read(options,&block)
  end
end
