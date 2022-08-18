require "grammar_stats"

RSpec.describe GrammarStats do
  it "check if the text is a string" do
    grammar = GrammarStats.new
    results = grammar.check("Hello!")
    expect(results).to eq true
  end
end