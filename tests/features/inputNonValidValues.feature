Feature: Input non-valid values
    As a user I should be able to input non-valid values and get the correct error message

    Scenario Outline: Empty values
        Given I launch app in clean state
        When I input "<value_1>" in side_1 field
        And I input "<value_2>" in side_2 field
        And I input "<value_3>" in side_3 field
        And I click on "Find out!" button
        Then I get "This is not a triangle!" output
        Examples:
            | value_1   | value_2   | value_3   |
            | side_a    | side_b    | Empty     |
            | side_a    | Empty     | side_b    |
            | Empty     | side_a    | side_b    |

        # Note: "side_a" and "side_b" are integers generated on every execution of the test, so that we test different values every time
        # In order to get valid results: 
        # - "side_a" and "side_b" are both different from zero

    Scenario Outline: Float values
        Given I launch app in clean state
        When I input "<value_1>" in side_1 field
        And I input "<value_2>" in side_2 field
        And I input "<value_3>" in side_3 field
        And I click on "Find out!" button
        Then I get "Enter a valid value" pop-up message on the corresponding field
        Examples:
            | value_1   | value_2   | value_3   |
            | side_a    | side_b    | Float     |
            | side_a    | Float     | side_b    |
            | Float     | side_a    | side_b    |

        # Note: "side_a" and "side_b" are integers generated on every execution of the test, so that we test different values every time
        # Also, "Float" is a random float value generated on every execution
        # In order to get valid results: 
        # - "side_a", "side_b" and "Float" are all different from zero

    Scenario: Char values
        Given I launch app in clean state
        When I input "char_1" in side_1 field
        And I input "char_2" in side_2 field
        And I input "char_3" in side_3 field
        Then Inputs are not entered, all fields remain empty

        # Note: "char_1", "char_2" and "char_3" are random characters generated on every execution of the test, so that we test different values every time