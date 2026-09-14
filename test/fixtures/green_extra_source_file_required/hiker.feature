Feature: hitch-hiker playing scrabble

Scenario: the meaning of life, the universe, and everything
  Given the hitch-hiker selects some tiles
  When they spell the answer
  Then the score is 42 and its checksum is 102
