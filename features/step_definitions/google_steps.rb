
When /^I search google for "([^"]*)"$/ do |search_string|
  @browser.goto("http://google.com")
  @browser.text_field(:name, 'q').set(search_string)

  search_btn = @browser.button(:name, 'btnG')
  search_btn.wait_until_present
  search_btn.click

  suggest_table = @browser.table(:dir, 'ltr')
  suggest_table.wait_while_present
end

Then /google should .+ "([^"]*)"/ do |suggest_string|

  suggest_el = @browser.div(:id, 'topstuff')
  suggest_el.wait_until_present
  suggest_el.text.should include suggest_string
end

Then /^My browser should spin about$/ do
  pending
end