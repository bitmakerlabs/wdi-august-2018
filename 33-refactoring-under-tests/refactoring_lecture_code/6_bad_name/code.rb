def total_accrued_loan(principal_loan, interest_rate_float, years)
  interest_rate_percentage = interest_rate_float / 100
  principal_loan * (1 + interest_rate_percentage * years)
end
