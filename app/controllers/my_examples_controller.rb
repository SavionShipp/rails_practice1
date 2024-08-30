class MyExamplesController < ApplicationController
  def fortune_story
    fortunes = [
    "you will have a good day",
    "you will have a bad day",
    "you will have a ok day"
  ]
    puts "pick a number between 1 and 3"
    number = gets.chomp.to_i
    if number == 1
      p fortunes[0]
    elsif number == 2
      p fortunes[1]
    elsif number == 3
      p fortunes[2]
    end
  end

  def lotto_numbers
    numbers = []
    index = 0
    while numbers.length < 6
      numbers << rand(1..60)
    end
    p numbers
  end

  def fortune_telling
    render json: {message: lotto_numbers}
  end

end
