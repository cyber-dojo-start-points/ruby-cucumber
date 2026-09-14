require_relative 'hiker'

Then /^the score has (\d+) digits$/ do |digits|
  expect(@result.to_s.length).to eq(digits.to_i)
end
