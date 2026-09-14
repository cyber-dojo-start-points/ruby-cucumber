require_relative 'fizz_buzz'

Given /^a fizz-buzz counter$/ do
end

When /^it counts off (\d+)$/ do |n|
  @said = fizz_buzz(n.to_i)
end

Then /^it says (\w+)$/ do |word|
  expect(@said).to eq(word)
end
