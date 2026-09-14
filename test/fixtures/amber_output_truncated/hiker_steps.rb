require_relative 'hiker'

Given /^the hitch-hiker selects some tiles$/ do
end

# Printing inside a step puts the flood ahead of cucumber's summary, and the
# runner keeps only the first 50K of the stream, so the summary is what falls
# off the end.
When /^they spell the answer$/ do
  4000.times { |i| puts "debug: i is #{i}, total is #{i * 2}" }
  @result = answer
end

Then /^the score is (\d+)$/ do |score|
  expect(@result).to eq(score.to_i)
end
