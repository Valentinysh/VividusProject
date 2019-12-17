Scenario: ‘Sign Up’ scenario using page elements steps
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
|userEmail         |userName                   |userPassword  |
|ureifadaqekl@fs.ru|#{generate(Name.firstName)}|passs131231   |
|hjdsac@ko.ru      |#{generate(Name.firstName)}|passsdasd13   |

Scenario: API creating board

When I send HTTP POST to the relative URL '/1/boards' with content: '{"prefs_permissionLevel":"private","prefs_selfJoin":true,"prefs_background":"lime","creationMethod":"assisted","defaultLists":false,"name":"fsdfsdfsd","token":"5df8e168b15bab06a83c3bad/Yo22XTqa7uo1HZr1kK8T2erqtmRT0dQyVEpeU5jrGMi1DmgLZZLYVNCUHDCeFb39"}'