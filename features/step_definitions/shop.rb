
Given(/^I Am on Optus Home page$/) do
   $b.goto("https://www.optus.com.au/for-you")

end

Then(/^I Will select the shop from meganav$/) do

  $b.span(class: ["cta-label"]).wait_until(&:present?).click


end

Then(/^user will click on "([^"]*)" from mobile section$/) do |menu|
  if
  $b.link(:text => menu).exists?
    $b.link(:text => menu).click
  else
    puts ("link not found")
  end
end



Then(/^I click on "([^"]*)" filter$/) do |arg|
    $b.span(text: arg).wait_until(&:present?).click
    $b.screenshot
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

Then(/^I select "([^"]*)" filter and "([^"]*)" Speed$/) do |filter, speed|
  $b.span(text: filter).wait_until(&:present?).click
  puts("selcted" + filter)
  $b.label(:for=> speed).click
  puts ("selected" + speed)
  $b.screenshot
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
 end

Then(/^I click on "([^"]*)" filter and "([^"]*)"  storage$/) do |arg1, arg2|
  $b.span(text: arg1).wait_until(&:present?).click
  $b.label(:text=> /128GB - 256GB/).click
end

Then(/^user click on Data SIMs from Home Internet & nbn$/) do
  if
    # $b.link(:href, '<a class="link megaNavLink" href="/mobile/tablets">iPads &amp; Tablets</a>').exists?
    $b.link(:href, 'href="/mobile/tablets').exists?
    puts("link found")
    $b.link(:href, 'href="/mobile/tablets').click
  else
    puts("not found")
  end
end

Then(/^user click on "([^"]*)" from Home internet and NBn section$/) do |arg|
  if

  $b.link(:text => arg).exists?
  $b.link(:text => arg).click
  puts(" this clicked on menu " + arg)

    puts("link found")
  else
    puts("not found")
  end
  puts $b.url
  puts($b.url + "visted after click")
end

Then(/^user select "([^"]*)" from available plan$/) do |plan|
  $b.link(:text => plan).exists?
  puts ("plan available")
  $b.scroll.to :center
   $b.button(aria_label: 'BUY NOW ' + plan).click
  puts('BUY NOW ' + plan +' selected ')

end

Then(/^user select "([^"]*)" customer type$/) do |arg|
  $b.h2(:text => 'Are you a new or existing customer?').wait_until(&:present?)
 $b.h2(:text => 'Are you a new or existing customer?').exists?

  expect($b.url.include?("customer-choice")).to be true
  puts $b.url

  puts('customer intent page loaded successfully')
  #$b.label(:id => "I'm new to Optus").set
end