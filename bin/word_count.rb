# frozen_string_literal: true

input_file = ARGV[0]

File.open(input_file) do |file|
  @lines = 0
  @words = 0
  @chars = 0
  @bytes = 0

  file.each_with_index do |line, i|
    # line == "1997-07-21,cat,Blue"
    @lines += 1
    @words += line.split(',').length
    @chars += line.length
    @bytes += line.bytesize
  end

  puts "lines: #{@lines}, words: #{@words}, chars: #{@chars}, bytes: #{@bytes}"
end
