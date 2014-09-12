require 'pry'
module MarkdownProcessor

  # Place a string inside <h1> tags ONLY IF it starts with a "#"
  #
  # string - the String to be manipulated
  #
  # Example:
  #
  # convert_to_h1("#hello")
  #   => '"<h1>hello</h1>"
  #
  # Returns the initial string, minus the "#", wrapped in an <h1> tag
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