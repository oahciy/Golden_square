require "text_check"

RSpec.describe "text_check method" do
  context "when no text is given" do
    it "throws an error message" do
      expect { text_check(nil) }.to raise_error "no text is given!"
    end
  end
  
  context "when the text includes '#TODO'." do
    it "returns true" do
      expect(text_check("#TODO walk the dog")).to eq true
    end

    it "returns true" do
      expect(text_check("#todo walk the dog")).to eq false
    end

    it "returns true" do
      expect(text_check("# walk the dog")).to eq false
    end

    it "returns true" do
      expect(text_check("todo: walk the dog")).to eq false
    end
  end
end