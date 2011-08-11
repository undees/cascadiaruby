require 'chunky_png'

def find_shadows(filename)
  image   = ChunkyPNG::Image.from_file filename
  shadows = []

  (0...image.height).each do |y|
    (0...image.width).each do |x|
      gray = ChunkyPNG::Color.grayscale_teint \
      image[x, y]

      shadows << [x, y] if gray < 128
    end
  end

  shadows
end
