Feature: Input valid values
    As a user I should be able to input valid values and get the correct triangle type
   
    Scenario: Valid values of an Equilateral triangle
        Given I launch app in clean state
        When I input "value" in side_1 field
        And I input "value" in side_2 field
        And I input "value" in side_3 field
        And I click on "Find out!" button
        Then I get "This is an Equilateral Triangle!" output
        
        # Note: "value" is an integer generated on every execution of the test, so that we test different values every time
        # In order to get valid results:
        # - "value" is different from zero

    Scenario Outline: Valid values of an Isosceles triangle
        Given I launch app in clean state
        When I input "<value_1>" in side_1 field
        And I input "<value_2>" in side_2 field
        And I input "<value_3>" in side_3 field
        And I click on "Find out!" button
        Then I get "This is an Isosceles Triangle!" output
        Examples:
            | value_1   | value_2   | value_3   |
            | side_a    | side_a    | side_b    |
            | side_a    | side_b    | side_a    |
            | side_b    | side_a    | side_a    |

        # Note: "side_a" and "side_b" are integers generated on every execution of the test, so that we test different values every time
        # In order to get valid results: 
        # - "side_a" and "side_b" are both different from zero
        # - "side_b" is minor than "side_a" + "side_a"

    Scenario: Valid values of a Scalene triangle
        Given I launch app in clean state
        When I input "value_1" in side_1 field
        And I input "value_2" in side_2 field
        And I input "value_3" in side_3 field
        And I click on "Find out!" button
        Then I get "This is an Scalene Triangle!" output

        # Note: "value_1", "value_2" and "value_3" are integers generated on every execution of the test, so that we test different values every time
        # In order to get valid results: 
        # - "value_1", "value_2" and "value_3" are all different from zero
        # - "value_1", "value_2" and "value_3" are all different from each other
