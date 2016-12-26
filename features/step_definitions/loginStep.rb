When /^I log in MyPACD with Username "(.*?)" and Password "(.*?)"$/ do |username,password|
  sleep 5
  puts username,password
  login_page.loginWith(username,password)
end

Then /^I should go into the main page and title is "(.*?)"$/ do |main_title|
  sleep 10
  actual_title = base_page.findById("com.huawei.it.mypacd.sit:id/main_title").text
  raise ("Not find #{main_title}") unless actual_title == main_title
end

When /^I click on module "(.*?)"$/ do |module_name|
  sleep 5
  base_page.clickByXpath("//*[@text='#{module_name}']")
end

Then /^I should go into the "(.*?)" page$/ do |page_title|
    sleep 20

end







=begin


=end