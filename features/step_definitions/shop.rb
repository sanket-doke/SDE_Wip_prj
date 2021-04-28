
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

