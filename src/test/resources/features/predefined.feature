
  #author: Alex



@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//textarea[@name='q']" should be present
    When I type "Cucumber" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

#Scenario: for http://gibiru.com
  @predefined2
Scenario: Search Engine for  http://gibiru.com
    Given I open url " http://gibiru.com"
    Then I should see page title contains "Gibiru – Protecting your privacy since 2009"
    #Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then element with xpath "//input[@id='q']" should be present
    Then I type "orange" into element with xpath "//input[@id='q']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@id='web-results']" to be present
    Then element with xpath "//div[@id='web-results']" should contain text "orange"
    And I wait for 2 sec

    #Scenario: for https://duckduckgo.com/
    @predefined3
    Scenario: Search Engine for https://duckduckgo.com/
      Given I open url "https://duckduckgo.com/"
      Then I should see page title contains "DuckDuckGo — Privacy, simplified."
      Then element with xpath "//input[@id='searchbox_input']" should be present
      Then I type "apple" into element with xpath "//input[@id='searchbox_input']"
      And I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//section[@data-testid='mainline']" to be present
      Then element with xpath "//section[@data-testid='mainline']" should contain text "apple"

      #Scenario: for https://swisscows.com
    @predefined4
    Scenario: Search Engine for https://swisscows.com
      Given I open url "https://swisscows.com"
      Then I should see page title contains "Your private and anonymous search engine Swisscows"
      Then element with xpath "//input[@type='search']" should be present
      Then I type "Belarus" into element with xpath "//input[@type='search']"
      And I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//div[@class='web-results']" to be present
      Then element with xpath "//div[@class='web-results']" should contain text "Belarus"

      #Scenario: for https://www.searchencrypt.com
    #predefined5
    Scenario: Search Engine for https://www.searchencrypt.com
      Given I open url "https://www.searchencrypt.com"
      Then I should see page title contains "Search Encrypt | Home"
      Then element with xpath "//input[@name='q']" should be present
      Then I type "apple" into element with xpath "//input[@name='q']"
      And I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//input[@name='q']" to be present
      Then element with xpath "//section[@class='serp__results container']" should contain text "apple"

      #Scenario: for https://www.startpage.com
    #predefined6
    Scenario: Search Engine for https://www.startpage.com
      Given I open url "https://www.startpage.com"
      Then I should see page title contains "Startpage - Private Search Engine. No Tracking. No Search History."
      Then element with xpath "//form[@id='search']" should be present
      Then I type "shrimp" into element with xpath "//input[@id='q']"
      And I click on element with xpath "(//button[@id='search-btn'])[1]"
      Then I wait for element with xpath "//input[@id='q']" to be present
      Then element with xpath "//div[@class='show-results']" should contain text "shrimp"

      #Scenario: for https://www.ecosia.org
    @predefined7
    Scenario: Search Engine for https://www.ecosia.org
      Given I open url "https://www.ecosia.org"
      Then I should see page title contains "Ecosia - the search engine that plants trees"
      Then element with xpath "//input[@name='q']" should be present
      Then I type "coconut" into element with xpath "//input[@name='q']"
      And I click on element with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//input[@name='q']" to be present
      Then element with xpath "//main[@id='main']" should contain text "coconut"

      #Scenario: for https://www.wiki.com/
        @predefined8
        Scenario: Search Engine for https://www.wiki.com/
          Given I open url "https://www.wiki.com/"
          Then I should see page title contains "Wiki.com"
          Then element with xpath "//input[@name='q']" should be present
          Then I type "BMW" into element with xpath "//input[@name='q']"
          And I click on element with xpath "//input[@name='btnG']"
          And I click on element with xpath "//button[@id='proceed-button']"
          Then I wait for element with xpath "//input[@name='q']" to be present
          Then element with xpath "//div[@id='inner-sbox']" should contain text "BMW"

          #Scenario: for https://www.givewater.com/
    @predefined9
    Scenario: Search Engine for https://www.givewater.com/
      Given I open url "https://www.givewater.com/"
      Then I should see page title contains "Search the Web to Give Clean Water to Those in Need » giveWater Search Engine"
      Then element with xpath "//input[@id='site-search']" should be present
      Then I type "New York" into element with xpath "//input[@id='site-search']"
      And I click on element with xpath "//button[@id='button-addon2']"
      Then I wait for element with xpath "//input[@id='site-search']" to be present
      Then element with xpath "<string>" should contain text "<string>"
  