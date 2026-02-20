Feature: Number Range Checker
would like to check if the number is in the given range

Scenario Outline:
Given the number is "<number>"
And the minimum is "<min>"
And the maximum is "<max>"
When I check the number
Then I should told "<answer>"

Examples:
| number | min | max | answer |
| 50 | 0 | 100 | True |
| -5 | 0 | 100 | False|
| 150 | 0 | 100 | False|
| 0 | 0 | 100 | True |
| 100 | 0 | 100 | True |
| 3.27 | 0 | 100 | True |
| -6.75 | 0 | 100 | False |
| -75 | -100 | -50 | True |
| 30 | -50 | -100 | False |