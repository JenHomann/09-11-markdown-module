require 'pry'
module MarkdownProcessor

  def convert_to_h1(string)
    split_string = string.split(//)
    if split_string[0] == "#"
      split_string.shift
      new_string = split_string.join
      return "<h1>#{new_string}</h1>"
    else
      false
    end
    
  end

end

binding.pry

#
# This part is totally unrelated to Rails. It's just a Ruby file. Create it separately as its own project:
#
# Make a new file called markdown_processor.rb. Create a module called MarkdownProcessor and add one method to it. That method (called convert_to_h1) should take a string and do the following to it:
#
# If the first character of the string is "#", then that line (excluding the "#") should be wrapped in an <h1> tag. Meaning that if I do convert_to_h1("# Hello world."), the method you write should return "<h1>Hello world.</h1>".
# If the first character of the string is not "#", the method should return false.
# Write tests for your method.
#
# (Go back and consult the Rspec tutorial if you need to.)