class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]

    return @answer = 'Great!' if @question.strip.downcase == 'i am going to work'

    return @answer = 'Silly question, get dressed and go to work!' if @question.include?('?')

    @answer = "I don't care, get dressed and go to work!"
  end
end
