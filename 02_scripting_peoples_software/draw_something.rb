require 'ffi'
require 'find_shadows'

module User32
  MOUSEEVENTF_LEFTDOWN = 0x0002
  MOUSEEVENTF_LEFTUP   = 0x0004

  extend FFI::Library
  ffi_lib        'user32'
  ffi_convention :stdcall

  attach_function :SetCursorPos, [:long, :long], :int
  attach_function :mouse_event,  [:long] * 5, :void

  attach_function :FindWindowA, [:pointer, :pointer], :uint
  attach_function :SetForegroundWindow, [:uint], :bool
end

include User32

def activate(title)
  h = FindWindowA nil, title
  SetForegroundWindow h
end

def mouse_click(x, y)
  SetCursorPos x, y
  mouse_event MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0
  mouse_event MOUSEEVENTF_LEFTUP,   0, 0, 0, 0
end

activate 'untitled - Paint'

shadows = find_shadows 'photo.png'

shadows.sort_by { rand }.each do |x, y|
  mouse_click 100 + x, 100 + y
  sleep 0.05
end
