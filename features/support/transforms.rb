#no longer used in Cucumber 3.0.0
# CAPTURE_A_NUMBER = Transform /^\d+$/ do |number|
#   number.to_i
# end

#ParameterType has replaced transform
ParameterType(
  name: 'CAPTURE_CASH_AMOUNT',
  regexp: /^$(\d+$)/,
  transformer: -> (number) { number.to_i }
)
