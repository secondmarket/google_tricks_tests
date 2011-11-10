require 'watir-webdriver'
require 'rspec'

browser = Watir::Browser.new :firefox

Before do
  @browser = browser
end

at_exit do
  browser.close
end

ss_num = 0
After do |scenario|
  if scenario.failed?
    ss_filename = "screenshot_#{ss_num += 1}.png"
    browser.driver.save_screenshot ss_filename
    embed ss_filename, 'image/png'
  end
end
