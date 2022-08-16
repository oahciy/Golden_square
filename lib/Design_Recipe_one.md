# {{PROBLEM ONE}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

``` ruby
reading_time = reading_time(text)
text: a string (e.g. "Once upon a time")
reading_time: a string with an integer inside (e.g. "Your reading time is #{integer1} minute(s) #{integer2} second(s)")

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

reading_time("") => "There is nothing to read."
reading_time("one") => "Your reading time is 0 minute(s) 0.3 second(s)"
reading_time("one two") => "Your reading time is 0 minute(s) 0.6 second(s)"
reading_time("Once upon there was a prince who was very unhappy. He had not slept in days.") => "Your reading time is 0 minute(s) 4.8 second(s)"
reading_time("1. Strophe
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
") => "Your reading time is 1 minute(s) 0.6 second(s)"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
