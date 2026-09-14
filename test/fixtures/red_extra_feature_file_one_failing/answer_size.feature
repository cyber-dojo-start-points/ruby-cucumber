# A feature file added beyond the one the kata ships with. cucumber is handed
# the whole directory, so this one is run too, and its scenario disagrees with
# an answer of two digits.
Feature: how long the answer is

Scenario: the answer is three digits long
  Given the hitch-hiker selects some tiles
  When they spell the answer
  Then the score has 3 digits
