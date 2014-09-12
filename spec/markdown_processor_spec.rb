require "spec_helper"

describe MarkdownProcessor do
  
class DummyClass
end
  
before(:all) do
  @dummy = DummyClass.new
  @dummy.extend MarkdownProcessor
end
  
  describe "convert_to_h1" do
      
    it "should convert a string with char1 = # to an <h1> tag" do
      a = "#hello"
      expect(@dummy.convert_to_h1(a)).to eq("<h1>hello</h1>")
    end
    
    it "should return false if the string does not start with '#'" do
      a = "hello"
      expect(@dummy.convert_to_h1(a)).to eq(false)
    end
  end
end