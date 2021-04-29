Feature: open browser and hit google URL
  optus page open

  Scenario: visit google page

    Given I Am on Optus Home page
    Then I Will select the shop from meganav
    Then will click on the latest phones
    Then I click on "All Brands" filter
    Then I select "brand-Samsung" brand
    Then I click on "All Internal Memory" filter
    #Then I select "internalMemory" storage
    Then I select "All Network Speed" filter and "networkSpeed-5G" Speed
    #Then I Select "All Network Speed" filter and select "5G" type


