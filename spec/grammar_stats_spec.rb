require "grammar_stats"

RSpec.describe GrammarStats do
  it "check if the text is a string" do
    grammar = GrammarStats.new
    results = grammar.check("Hello!")
    expect(results).to eq true
  end

  it "returns percentage 50%" do
    grammar = GrammarStats.new
    results = grammar.check("Hello!")
    results_2 = grammar.check("hello")
    expect(grammar.percentage_good).to eq 50
  end

end