Feature: Input boundary values
    As a user I should be able to input boundary values and get the correct output

    Scenario: Zero values
        Given I launch app in clean state
        When I input "0" in side_1 field
        And I input "0" in side_2 field
        And I input "0" in side_3 field
        And I click on "Find out!" button
        Then I get "This is not a triangle!" output
   
    Scenario: Smallest possible triangle
        Given I launch app in clean state
        When I input "1" in side_1 field
        And I input "1" in side_2 field
        And I input "1" in side_3 field
        And I click on "Find out!" button
        Then I get "This is an Equilateral Triangle!" output

    Scenario Outline: Boundary values of an Isosceles triangle
        Given I launch app in clean state
        When I input "<value_1>" in side_1 field
        And I input "<value_2>" in side_2 field
        And I input "<value_3>" in side_3 field
        And I click on "Find out!" button
        Then I get "<message>" output
        Examples:
            | value_1   | value_2   | value_3   | message                           |
            | 3         | 3         | 6         | This is not a triangle            |
            | 3         | 6         | 3         | This is not a triangle            |
            | 6         | 3         | 3         | This is not a triangle            |
            | 3         | 3         | 5         | This is an Isosceles Triangle!    |
            | 3         | 5         | 3         | This is an Isosceles Triangle!    |
            | 5         | 3         | 3         | This is an Isosceles Triangle!    |

    Scenario Outline: Boundary values of a Scalene triangle
        Given I launch app in clean state
        When I input "<value_1>" in side_1 field
        And I input "<value_2>" in side_2 field
        And I input "<value_3>" in side_3 field
        And I click on "Find out!" button
        Then I get "<message>" output
        Examples:
            | value_1   | value_2   | value_3   | message                       |
            | 7         | 8         | 15        | This is not a triangle        |
            | 7         | 15        | 8         | This is not a triangle        |
            | 15        | 7         | 8         | This is not a triangle        |
            | 7         | 8         | 14        | This is an Scalene Triangle!  |
            | 7         | 14        | 8         | This is an Scalene Triangle!  |
            | 14        | 7         | 8         | This is an Scalene Triangle!  |

    Scenario Outline: Boundary values of an Isosceles triangle
        Given I launch app in clean state
        When I input "<value_1>" in side_1 field
        And I input "<value_2>" in side_2 field
        And I input "<value_3>" in side_3 field
        And I click on "Find out!" button
        Then I get "<message>" output
        Examples:
            | value_1   | value_2   | value_3   | message                           |
            | 3         | 3         | 6         | This is not a triangle            |
            | 3         | 6         | 3         | This is not a triangle            |
            | 6         | 3         | 3         | This is not a triangle            |
            | 3         | 3         | 5         | This is an Isosceles Triangle!    |
            | 3         | 5         | 3         | This is an Isosceles Triangle!    |
            | 5         | 3         | 3         | This is an Isosceles Triangle!    |