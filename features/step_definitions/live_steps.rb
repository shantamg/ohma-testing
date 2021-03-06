Given(/^all users are logged in and at the test table$/) do
  (ENV['MIN']..ENV['MAX']).each do |i|
    username = "test_#{i}"
    Capybara.session_name = username
    if i == 1
      visit '/start_test'
    else
      visit '/'
    end
    find('.login.button').click
    fill_in 'user_email', with: "#{username}@example.com"
    fill_in 'user_password', with: "0m0m0mtest0m0m0m"
    find('.submit_sign_in').click
    sleep 5
    click_link "Test Table"
  end
  sleep 30
end

When(/^all users ask a question$/) do
    pending # express the regexp above with the code you wish you had
end

Then(/^all questions should appear in the unanswered column$/) do
    pending # express the regexp above with the code you wish you had
end

When(/^all users answer all questions$/) do
    pending # express the regexp above with the code you wish you had
end

Then(/^all questions should appear in the answered column$/) do
    pending # express the regexp above with the code you wish you had
end








#When(/^I go to the live site$/) do
#  visit "/"
#end
#
#When(/^I click "(.*?)"$/) do |link|
#  click_link link
#end
#
#Then(/^I should see "(.*?)"$/) do |text|
#  expect(page).to have_content text
#end
#
#Given(/^I wait (.*?) to (.*?) seconds$/) do |min, max|
#  sleep rand((min.to_i)..(max.to_i))
#end
#
#Given(/^I fill out a random question$/) do
#    question = "#{Faker::Hacker.verb.capitalize} #{Faker::Hacker.adjective} #{Faker::Hacker.noun}?\t"
#    rand(0..1).times do
#      question << "#{Faker::Hacker.say_something_smart}\t"
#    end
#    rand(1..2).times do
#      question << "#{Faker::Company.bs}\t"
#    end
#    rand(1..2).times do
#      question << "#{Faker::Hacker.say_something_smart}\t"
#    end
#    question << "\n"
#    fill_in 'question_content', with: question
#end
#
#Given(/^wait (.*?) seconds$/) do |seconds|
#  sleep seconds.to_i
#end
#
#Given(/^I am in browser "(.*?)"$/) do |browser|
#  Capybara.session_name = browser
#end
#
#Given(/^I clear the table$/) do
#  visit "/start_test"
#end
#
#Given(/^I log in as user "(.*?)"$/) do |user|
#  if user == "a"
#    email = "shantam@mountmadonna.org"
#  end
#  if user == "b"
#    email = "jason.galuten@gmail.com"
#  end
#  find('.login.button').click
#  fill_in 'user_email', with: email
#  fill_in 'user_password', with: ENV['PASSWORD']
#  find('.submit_sign_in').click
#end
#
#Given(/^I go to the test table$/) do
#  click_link "Test Table"
#end
#
#When(/^I fill out b's question$/) do
#  fill_in 'question_content', with: "This is b's question\tYes\tNo\n"
#end
#
#Then(/^I should see b's question on the left$/) do
#  expect(find('#unanswered')).to have_content("b's question"), wait: 5
#end
