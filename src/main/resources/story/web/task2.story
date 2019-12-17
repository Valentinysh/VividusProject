Scenario: ‘Log Up’ scenario using page elements steps
GivenStories: /story/web/precondition1.story

When I open URL `https://trello.com/login` in new window
When I click on element located `By.xpath((//*[contains(text(),"Log In")])[1])`
When I fill '<userEmail>' and '<userPassword>'
When I wait until state of element located `By.xpath(//*[@id="login"])` is enabled
When I click on element located `By.xpath(//*[@id="login"])`
Then the page with the URL containing 'https://trello.com/' is loaded

Examples:
|userEmail      |userName                   |userPassword  |
|sddfswer@fsf.ru|#{generate(Name.firstName)}|passs131231   |

When I click on element located `By.xpath(//*[@id="header"]/div[2]/button[3]/div/span)`
When I click on element located `By.xpath((//*[contains(text(),"Profile and Visibility")])[1])`