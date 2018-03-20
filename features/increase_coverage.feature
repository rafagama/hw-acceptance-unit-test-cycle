Feature: check CRUD functions
 
  As a movie buff
  So that I can find movies with my favorite director
  I want to include and serach on director information in movies I enter
 
Background: movies in database
 
  Given the following movies exist:
  | title                   | rating | director     | release_date |
  | Star Wars               | PG     | George Lucas |   1977-05-25 |
  | Blade Runner            | PG     | Ridley Scott |   1982-06-25 |
  | THX-1138                | R      | George Lucas |   1971-03-11 |
  | The Terminator          | R      |              |   1984-10-26 |
  | When Harry Met Sally    | R      |              |   1989-06-21 |
  | The Help                | PG-13  |              |   2011-08-10 |
  And I am on the RottenPotatoes home page
 
Scenario: add new movie
  When I go to the new page
  And  I fill in "Title" with "Alien"
  And  I fill in "Director" with "Ridley Scott"
  And  I press "Save Changes"
  Then  I should be on the home page
  And  I should see "Alien was successfully created."
  
Scenario: delete a movie
  Given I am on the details page for "Star Wars"
  And  I press "Delete"
  Then  I should be on the home page
  And  I should see "Movie 'Star Wars' deleted."
  
Scenario: sort movies alphabetically
  When I follow "Movie Title"
  Then I should see "Blade Runner" before "Star Wars"

Scenario: sort movies in increasing order of release date
  When I follow "Release Date"
  Then I should see "THX-1138" before "Star Wars"