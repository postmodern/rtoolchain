require 'rtoolchain/gnu/objdump/objdump'

module RToolchain
  def RToolchain.objdump(options={},&block)
    @gnu_objdump ||= GNU::Objdump.native

    return @gnu_objdump.dump(options,&block)
  end
end
