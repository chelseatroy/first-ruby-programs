

@line_width = 50
@contents = [["Chapter 1:","Training your Dog","2"],
			["Chapter 2:","Training your Turtle","7"],
			["Chapter 3:","Training your Cat","19"]]

def print_contents
	@contents.each do |chapter|
		puts(chapter[0].ljust(@line_width/3)+chapter[1].center(@line_width/3)+chapter[2].rjust(@line_width/3))
	end
end

puts("Table of Contents".center(@line_width))
puts ""
print_contents

