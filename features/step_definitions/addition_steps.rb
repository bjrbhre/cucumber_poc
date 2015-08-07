Given(/^that I give "(.*?)" and "(.*?)" as input$/) do |arg1, arg2|
  @output = `./bin/sum.rb #{arg1} #{arg2}`.to_i
end

Then(/^I obtain "(.*?)" as a result$/) do |result|
  result = result.to_i
  expect(@output).to eq(result)
end
