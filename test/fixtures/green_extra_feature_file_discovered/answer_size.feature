Feature: the size of the answer

Scenario: the answer is two digits long
  Given the hitch-hiker selects some tiles
  When they spell the answer
  Then the score has 2 digits
