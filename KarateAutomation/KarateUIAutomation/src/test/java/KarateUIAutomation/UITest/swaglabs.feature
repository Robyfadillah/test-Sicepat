
Feature: swaglabs feature
this is swaglabs test


 
  Scenario: login and checkout 
    Given driver 'http://www.saucedemo.com'
    And input("//*[@id='user-name']","standard_user") 
    And input("//*[@id='password']","secret_sauce")
    When click("//*[@id='login-button']")
    * delay(4000)
    * dialog(true)
    * screenshot()
    When click("//*[@id='add-to-cart-sauce-labs-backpack']")
    When click("//*[@id='shopping_cart_container']/a")
    * delay(4000)
    * screenshot()
    When click("//*[@id='checkout']")
    And input("//*[@id='first-name']","Roby")
    And input("//*[@id='last-name']","Fadillah Zafar")
    And input("//*[@id='postal-code']","45311")
    When click("//*[@id='continue']")
    * delay(5000)
    * scroll("//*[@class='btn btn_action btn_medium cart_button']").click()
    * delay(5000)
    * screenshot()
    
