from behave import given, when, then
from src.number_range import number_in_range

@given('the number is "{number}"')
def step_given_number(context, number):
    context.number = float(number)

@given('the minimum is "{min}"')
def step_given_min(context, min):
    context.min = float(min)

@given('the maximum is "{max}"')
def step_given_max(context, max):
    context.max = float(max)

@when('I check the number')
def step_when_check_number(context):
    context.result = number_in_range(context.number, context.min, context.max)

@then('I should told "{expected}"')
def step_then_result(context, expected):
    assert context.result == expected, f'Elvárt érték: "{expected}" de a kapott érték: "{context.result}"'
