require 'rtoolchain/gnu/strings/strings'

module RToolchain
  def RToolchain.gnu_strings(options={},&block)
    @gnu_strings ||= GNU::Strings.native

    return @gnu_strings.strings(options,&block)
  end
end
