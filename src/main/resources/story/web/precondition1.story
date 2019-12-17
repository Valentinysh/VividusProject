Scenario: Create ‘Sign Up’ scenario using page elements steps
Given I am on a page with the URL 'https://trello.com/signup'
When I enter `<userEmail>` in field located `By.xpath(//*[@id="email"])`
When I wait until state of element located `By.xpath(//*[@id="signup"])` is enabled
When I click on element located `By.xpath(//*[@id="signup"])`
When I enter `<userName>` in field located `By.xpath(//*[@id="name"])`
When I enter `<userPassword>` in field located `By.xpath(//*[@id="password"])`
When I wait until state of element located `By.xpath(//*[@id="signup"])` is enabled
When I click on element located `By.xpath(//*[@id="signup"])`
When I save value of cookie with name `cookie` to STORY variable `variableName`
When I save cookie with name `cookieName` as JSON to scopes variable `variableName`

Then the page with the URL 'https://trello.com/create-first-board' is loaded
Examples:
|userEmail      |userName                   |userPassword  |
|sddfswer@fsf.ru|#{generate(Name.firstName)}|passs131231   |