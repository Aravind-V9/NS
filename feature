Feature: Transmode_Capacity

  @Test
  Scenario: user navigates to Transmode Capacity Page
    Given User is in the Network sourcing HomePage
    When User clicks on the Transmode Capacity Management on the left menu
    Then User should be on the Transmode Capacity Management Page


  Scenario Outline: user searches for the transmode Capacity using filters
    Given User is in the Transmode Capacity Management Page
    When User applies the following filters
      | field_name | value  |
      | Source      | <Source>      |
      | Destination | <Destination> |
      | Transmode   | <Transmode>   |
      | UOM Name    | <UOM Name>    |
      | Status      | <Status>      |
    And User clicks on search button
    Then The search results should be filtered by the applied criteria

    Examples:
      | Source | Destination | Transmode | UOM Name | Status   |
#      | 00130  |             |              |     | InActive |
#      |        | 01111       |              |     |          |
#      | 00130  |             |              |     | Active   |
#      |        | 01111       |              | GBP |          |
      | 1156      | 121        |D2S-1156-121 | Units | Inactive |


#  Scenario Outline: Filters with leading and non leading zero's for source and destination
#    Given User is in the Transmode Capacity Management Page
#    When User applies the following filters
#      | field_name | value  |
#      | Source      | <Source>      |
#      | Destination | <Destination> |
#    And User clicks on search button
#    Then The search results should be filtered by the applied criteria
#
#    Examples:
#      | Source | Destination |
#      | 130    |             |
#      |        | 01111       |
#      |  0130  | 01111       |

#  Scenario Outline: User verifies the filters are displaying the correct results
#    Given User is in the Transmode Capacity Management Page
#    When User applies the following filters
#      | field_name | value  |
#      | Source      | <Source>      |
#      | Destination | <Destination> |
#      | Transmode   | <Transmode>   |
#      | UOM Name    | <UOM Name>    |
#      | Status      | <Status>      |
#    And User clicks on search button
#    Then The search results should be same as the DB results
#
#    Examples:
#       | Source | Destination | Transmode | UOM Name | Status   |
#      | 1000  |    120         |              |     |  Active|
#      | 1000  |    120         |              |     |  Inactive|






















  Scenario Outline: user adds a new transmode capacity
    Given User is in the Transmode Capacity Management Page
    When User clicks on add transmode capacity
    And User enters all the necessary fields
      | field_name  | value         |
      | Source      | <Source>      |
      | Destination | <Destination> |
      | Transmode   | <Transmode>   |
      | UOM Name    | <UOM Name>    |
      | Status      | <Status>      |
      | Min MOQ     | <Min MOQ>     |
      | Max MOQ     | <Max MOQ>     |
    And User clicks on add button
    Then User verifies the success message is displayed
    And The new transmode capacity record should be added
    Examples:
      | Source | Destination | Transmode | UOM Name | Status | Min MOQ | Max MOQ |
      | 1156      | 121        |D2S-1156-121 | Units | Inactive | 5 | 222 |

@Test
  Scenario Outline: user updates the transmode capacity
    Given User is in the Transmode Capacity Management Page
    When User applies the following filters
      | field_name | value  |
      | Source      | <Source>      |
      | Destination | <Destination> |
      | Transmode   | <Transmode>   |
      | UOM Name    | <UOM Name>    |
    And User clicks on search button
    And User clicks on edit button
    And User updates the transmode Capacity
      | field_name       | value         |
      | Status      | <Status>      |
      | Min MOQ     | <Min MOQ>     |
      | Max MOQ     | <Max MOQ>     |
    Then The new transmode capacity record should be updated
    Examples:
      | Source | Destination | Transmode | UOM Name | Status | Min MOQ | Max MOQ |
      | 1156      | 121        |D2S-1156-121 | Units | Inactive | 5 | 222 |

