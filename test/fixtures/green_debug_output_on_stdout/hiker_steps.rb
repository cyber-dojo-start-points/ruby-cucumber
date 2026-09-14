require_relative 'hiker'

Given /^the hitch-hiker selects some tiles$/ do
end

When /^they spell the answer$/ do
  puts 'debug: answer was called'
  @result = answer
end

Then /^the score is (\d+)$/ do |score|
  $stderr.puts 'debug: and this print aimed at stderr'
  expect(@result).to eq(score.to_i)
end
