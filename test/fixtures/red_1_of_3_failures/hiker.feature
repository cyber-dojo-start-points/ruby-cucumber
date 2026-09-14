Feature: hitch-hiker playing scrabble

Scenario: the meaning of life, the universe, and everything
  Given the hitch-hiker selects some tiles
  When they spell the answer
  Then the score is 42

Scenario: the answer is two digits long
  Given the hitch-hiker selects some tiles
  When they spell the answer
  Then the score has 2 digits

Scenario: the answer is an even number
  Given the hitch-hiker selects some tiles
  When they spell the answer
  Then the score is even
