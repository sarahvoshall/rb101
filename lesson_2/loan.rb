def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.match(/[[:digit:]]/)
end

loop do
  prompt("Enter your loan amount.")

  loan_amount = nil
  loop do
    loan_amount = gets.chomp

    if valid_number?(loan_amount)
      break
    else
      prompt("That doesn't look right... Enter a valid number.")
    end
  end

  prompt("Enter your APR in decimal format.")

  apr = nil
  loop do
    apr = gets.chomp

    if valid_number?(apr) && apr.to_f < 1
      break
    else
      prompt("That doesn't look right... Enter a valid APR as a decimal.")
    end
  end

  prompt("Enter your loan duration in years.")

  duration = nil
  loop do
    duration = gets.chomp

    if valid_number?(duration)
      break
    else
      prompt("That doesn't look right... Enter a valid number.")
    end
  end

  monthly_interest = apr.to_f / 12
  duration_months = duration.to_f * 12

  payment = loan_amount.to_f * (monthly_interest.to_f / (1 - (1 + monthly_interest.to_f)**(-duration_months.to_f)))

  payment = payment.round(2)

  prompt("Your monthly payment is #{payment}.")

  prompt("Press Y if you want to calculate another payment.")
  response = gets.chomp
  break unless response.downcase.start_with?("y")
end

prompt("Thank you for using the loan calculator.")
