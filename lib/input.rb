class Input
  attr_accessor :width, :height

  def initialize width,height
    @width = width.to_i
    @height = height.to_i
  end

  def cell_input
    @array = []
    puts "Enter #{@height} rows that have #{@width} columns per row.  Only use characters that are a ' ', '.',':', or 'T'"
    @height.times do |n|
      row = STDIN.gets.chomp.split("")
      @array << row
    end
    @array
  end
end

if __FILE__ == $0
  puts "Enter width..."
  width = STDIN.gets.chomp
  puts "Enter height..."
  height = STDIN.gets.chomp
end

test = Input.new(width,height)
puts test.cell_input


