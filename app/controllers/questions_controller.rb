class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:input]
    if @input.end_with?('?')
      @reply = 'Silly question, get dressed and go to work!'
    elsif @input == 'I am going to work'
      @reply = 'Great!'
    else
      @reply = "I don't care, get dressed and go to work!"
    end
  end
end
