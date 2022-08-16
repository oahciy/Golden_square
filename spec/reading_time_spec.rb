require "reading_time"

describe "reading_time method" do
  it "returns 'There is nothing to read.' if passed ''." do
    expect(reading_time("")).to eq "There is nothing to read."
  end

  it "returns 'Your reading time is 0 minute(s) 0.3 second(s)' when passed 'one'" do
   expect(reading_time("one")).to eq "Your reading time is 0 minute(s) 0.3 second(s)"
  end

  it "returns 'Your reading time is 0 minute(s) 0.6 second(s)' when passed 'one two'" do
    expect(reading_time("one two")).to eq "Your reading time is 0 minute(s) 0.6 second(s)"
   end

   it "returns 'Your reading time is 0 minute(s) 4.8 second(s)' when passed 'a longer text'" do
    expect(reading_time("Once upon there was a prince who was very unhappy. He had not slept in days.")).to eq "Your reading time is 0 minute(s) 4.8 second(s)"
   end

   it "return your reading time in minutes and seconds when passed a text more than 200 words" do
    expect(reading_time("1. Strophe
      Hänsel und Gretel verliefen sich im Wald.
      Es war so finster und auch so bitter kalt.
      Sie kamen an ein Häuschen von Pfefferkuchen fein.
      Wer mag der Herr wohl von diesem Häuschen sein?
      
      2. Strophe 
      Hu, hu, da schaut eine alte Hexe raus!
      Lockte die Kinder ins Pfefferkuchenhaus.
      Sie stellte sich gar freundlich, o Hänsel, welche Not!
      Ihn wollt’ sie braten im Ofen braun wie Brot.
      
      3. Strophe
      Doch als die Hexe zum Ofen schaut hinein,
      ward sie gestoßen von unserm Gretelein.
      Die Hexe musste braten, die Kinder geh’n nach Haus.
      Nun ist das Märchen von Hans und Gretel aus.
      
      1. Strophe
      Hänsel und Gretel verliefen sich im Wald.
      Es war so finster und auch so bitter kalt.
      Sie kamen an ein Häuschen von Pfefferkuchen fein.
      Wer mag der Herr wohl von diesem Häuschen sein?
      
      2. Strophe
      Hu, hu, da schaut eine alte Hexe raus!
      Lockte die Kinder ins Pfefferkuchenhaus.
      Sie stellte sich gar freundlich, o Hänsel, welche Not!
      Ihn wollt’ sie braten im Ofen braun wie Brot.
      
      Doch als die Hexe zum Ofen schaut hinein,
      ward sie gestoßen von unserm Gretelein.
      Die Hexe musste braten, die Kinder geh’n nach Haus.
      Nun ist das Märchen von Hans und Gretel aus.
      
      Doch als die Hexe zum Ofen schaut hinein,
      ward sie gestoßen von unserm Gretelein.
      Die Hexe musste braten, die Kinder geh’n nach Haus.
      Nun ist das Märchen von Hans und Gretel aus.
      ")).to eq "Your reading time is 1 minute(s) 10.2 second(s)"
   end
end