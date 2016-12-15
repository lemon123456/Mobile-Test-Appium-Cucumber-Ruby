Given /^I am a System Admin$/ do

end

When /^I login MyPACD with "(.*?)" and "(.*?)"$/ do |username,password|
  login_page.loginWith(username,password)
end

