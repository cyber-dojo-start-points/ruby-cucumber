require_relative 'hiker'

Given /^the hitch-hiker selects some tiles$/ do
end

When /^they spell the answer$/ do
  @result = answer
end

Then /^the score is (\d+)$/ do |score|
  expect(@result).to eq(score.to_i)
end
