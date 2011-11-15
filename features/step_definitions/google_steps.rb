
When /^I search google for "([^"]*)"$/ do |search_string|
  @browser.goto("http://google.com")
  @browser.text_field(:name, 'q').set(search_string)

  search_btn = @browser.button(:name, 'btnG')
  search_btn.wait_until_present
  search_btn.click

  suggest_table = @browser.table(:dir, 'ltr')
  suggest_table.wait_while_present
end

Then /google should .+ "([^"]*)"/ do |expected_substring|
  element_we_are_checking = @browser.div(:id, 'topstuff')
  element_we_are_checking.wait_until_present
  element_we_are_checking.text.should include expected_substring
end

Then /^My browser should spin about$/ do
  pending
end