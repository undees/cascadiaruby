require 'win_gui'
require 'find_shadows'

w = WinGui::Window.find :title => /- Paint$/
w.set_foreground_window

shadows = find_shadows 'photo.png'

shadows.sort_by { rand }.each do |x, y|
  w.click :point => [100 + x, 100 + y]
  sleep 0.05
end
