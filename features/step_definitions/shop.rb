Given(/^I Am on Optus Home page$/) do
  $b.goto("https://www.optus.com.au/for-you")
end

Then(/^I Will select the shop from meganav$/) do
  #$b.span(class: ["cta-label"]).wait_until_present.click
  $b.span(class: ["cta-label"]).wait_until(&:present?).click
end

Then(/^will click on the latest phones$/) do

  if
  $b.link(:href, '/mobile/phones').exists?
    puts ("link found")
    $b.link(:href, '/mobile/phones').click
  else
    puts ("link not found")
  end

end
