class GamesController < ApplicationController
  def new
    @letters = [*('A'..'Z')].sample(10)
  end

  def score
    @word = params[:word]
    @letters = params[:letters]
    @result = if @word.upcase.chars.all? { |letter| @word.upcase.count(letter) <= @letters.count(letter) }
                "Congratulations! #{@word} is a valid English word!"
              else
                "Sorry but #{@word} can't be built out of #{@letters}"
              end
  end
end
