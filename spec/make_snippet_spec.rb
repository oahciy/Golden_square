require 'make_snippet'

describe 'make_snippet method' do
  it 'returns "Hi, my name is Jonas..." when passed "Hi, my name is Jonas and I am 36."' do
    expect(make_snippet("Hi, my name is Jonas and I am 36.")).to eq "Hi, my name is Jonas..."
  end

  it 'returns "I live in Norwich, which..." when passed "I live in Norwich, which is a lovely city."' do
    expect(make_snippet("I live in Norwich, which is a lovely city.")).to eq "I live in Norwich, which..."
  end

  it 'returns "We had a great time." when passed "We had a great time."' do
    expect(make_snippet("We had a great time.")).to eq "We had a great time."
  end
end