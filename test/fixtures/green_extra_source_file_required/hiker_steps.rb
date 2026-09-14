require_relative 'hiker'
require_relative 'checksum'

Given /^the hitch-hiker selects some tiles$/ do
end

When /^they spell the answer$/ do
  @result = answer
end

Then /^the score is (\d+) and its checksum is (\d+)$/ do |score, sum|
  expect(@result).to eq(score.to_i)
  expect(checksum(@result.to_s)).to eq(sum.to_i)
end
