require "open-uri"

class GamesController < ApplicationController
  VOWELS = %w(A E I O U Y)

  def new
    @letters = Array.new(5) { VOWELS.sample }
    @letters += Array.new(4) { (('A'..'Z').to_a - VOWELS).sample }
    @letters.shuffle!
    # @letters.join(", ")
  end

  def score
    @letters = params[:letters].split
    @word = (params[:word] || "").upcase
  end
end
