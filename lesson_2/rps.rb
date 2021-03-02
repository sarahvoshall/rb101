VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won.")
  elsif win?(computer, player)
    prompt("Computer won.")
  else
    prompt("It's a tie...")
  end
end

def win?(first, second)
  (first == 'scissors' && second == 'paper') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'rock' && second == 'scissors')
end

prompt("Welcome to Rock Paper Scissors Lizard Spock. First to five wins.")

loop do
  player_win_counter = 0
  computer_win_counter = 0
  while (player_win_counter.to_i < 5) && (computer_win_counter.to_i < 5)
    choice = nil
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = Kernel.gets().chomp().downcase()

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose #{choice}, computer chose #{computer_choice}.")

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      player_win_counter = player_win_counter.to_i + 1
    elsif win?(computer_choice, choice)
      computer_win_counter = computer_win_counter.to_i + 1
    end

    prompt("you: #{player_win_counter}, computer: #{computer_win_counter}")
  end

  prompt('Thanks for playing! Do you want to play again? Y / N')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Goodbye!")
