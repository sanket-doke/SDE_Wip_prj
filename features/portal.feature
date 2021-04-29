Feature: open browser and hit google URL
  optus page open

  Scenario: visit google page

    Given I Am on Optus Home page
    Then I Will select the shop from meganav
    Then will click on the latest phones
    Then I click on "All Brands" filter
    Then I select "brand-Samsung" brand
    Then I click on "All Internal Memory" filter and "64GB 128GB"  storage
    Then I select "All Network Speed" filter and "networkSpeed-5G" Speed
    Then I select "All Payment Terms" filter and "24 months" as term
    Then I sort the filter with price

