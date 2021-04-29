
Given(/^I Am on Optus Home page$/) do
  $b.goto("https://www.optus.com.au/for-you")
end

Then(/^I Will select the shop from meganav$/) do
  #$b.span(class: ["cta-label"]).wait_until_present.click
  $b.span(class: ["cta-label"]).wait_until(&:present?).click
  #$b.navigation.wait_until(&:present?).click
end

Then(/^will click on the latest phones$/) do

  if
  $b.link(:href, '/mobile/phones').exists?
    $b.link(:href, '/mobile/phones').click
  else
    puts ("link not found")
  end
end

Then(/^I click on "([^"]*)" filter$/) do |arg|
    $b.span(text: arg).wait_until(&:present?).click
  sleep(5)
end

Then(/^I select "([^"]*)" brand$/) do |arg|

    $b.label(:for=> arg).click
    puts("element found"+arg)
    i = $b.checkbox(id: arg).set?
    until i == true
      $b.label(:for=> arg).click
      puts i
      i = $b.checkbox(id: arg).set?
    end

end

#Then(/^I select "([^"]*)" storage$/) do |arg|
#$b.label(:for=> internalMemory-64GB - 128GB).click
#end

Then(/^I select "([^"]*)" filter and "([^"]*)" Speed$/) do |filter, speed|
  $b.span(text: filter).wait_until(&:present?).click
  puts("selcted" + filter)
  $b.label(:for=> speed).click
  puts ("selected" + speed)


end

Then(/^I select "([^"]*)" filter and "([^"]*)" as term$/) do |pay,dur|
  $b.span(text: pay).wait_until(&:present?).click
  puts("selcted" + pay)
  #$b.label(:for=> dur).click
  $b.label(:text=> dur).click
  puts ("selected" + dur)

end

Then(/^I sort the filter with price$/) do
  $b.span(text: /All Sort/).wait_until(&:present?).click
  $b.label(:text=> /Price Lowest to Highest/).click
  sleep(5)
end

Then(/^I click on "([^"]*)" filter and "([^"]*)"  storage$/) do |arg1, arg2|
  $b.span(text: arg1).wait_until(&:present?).click
  $b.label(:text=> /128GB - 256GB/).click
  $b.wait(1000)
end