require 'watir-webdriver'
require 'rspec'

browser = Watir::Browser.new :firefox

Before do
  @browser = browser
end

at_exit do
  browser.close
end

#the spell below here adds screenshots  of failures to the html report
# look for the little "Screenshot" link when you run cucumber with "-f html -o report.html"
ss_num = 0
After do |scenario|
  if scenario.failed?
    ss_filename = "screenshot_#{ss_num += 1}.png"
    browser.driver.save_screenshot ss_filename
    embed ss_filename, 'image/png'
  end
end
