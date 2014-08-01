Given(/^the following role definition:$/) do |string|
  define_constant string
end

Then(/^we can use the role as we do any other Ruby object:$/) do |string|
  eval string
end

When(/^we ask the gardener to water the plants:$/) do |string|
  eval_in_page string
end

Then(/^we should see the plants have been watered:$/) do |string|
  expect_code_with_result string, :eval
end

Then(/^we should be able to see that the widgets? exists?:$/) do |string|
  eval_in_page string
end
