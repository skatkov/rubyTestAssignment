require 'ffi'

module Quadratic
  include FFI
  extend FFI::Library
  ffi_lib 'quadratic.dll'
  attach_function :a , :setA , [:int], :void
end

test = Quadratic.a(1)