# {{PROBLEM TWO}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

``` rb
verify = grammar(text)
text: a string (e.g. "Hello, my name is Yichao.")
verify: a string that tells the user if the input text meets the criteria (e.g. "Nice grammar!", "You need to start with a capital letter.", "You need to end with a punctuation mark.")
```

## 3. Create Examples as Tests

grammar("Hello, my name is Yichao.") => "Nice grammar!"
grammar("hello, my name is Yichao.") => "You need to start with a capital letter."
grammar("Hello, my name is Yichao") => "You need to end with a punctuation mark."
grammar("hello, my name is Yichao") => "You need to improve your grammar."

## 4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.