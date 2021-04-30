@Optus_Shop_Functionality
Feature: open browser and hit Optus URL


  Background:
    Given I Am on Optus Home page
    Then I Will select the shop from meganav

    @Filter_Sel
  Scenario: Verify filters functionality  optus portal

    Then user will click on "Latest Phones" from mobile section
    Then I click on "All Brands" filter
    Then I select "brand-Samsung" brand
    Then I click on "All Internal Memory" filter and "64GB 128GB"  storage
    Then I select "All Network Speed" filter and "networkSpeed-5G" Speed
    Then I select "All Payment Terms" filter and "24 months" as term
    Then I sort the filter with price


      @Data_Plan
  Scenario: Verify user is able to add Tablet Device with plan in shopping cart and checkout till order summary page

      Then user click on "Data SIMs" from Home internet and NBn section
      Then user select "Large Data SIM Plan" from available plan
      Then user select "I'm new to Optus" customer type




