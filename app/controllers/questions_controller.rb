class QuestionsController < ApplicationController
  def ask
  end

  def answer
    question = params[:question]
    @answer = coach_answer(question)
  end

  def coach_answer(question)
    if question == 'I am off to work'
      'OK!'
    elsif question.end_with?("?")
      'Thats a funny question, get dressed and go to work!'
    else
      'I really don\'t care, get dressed and go to work!'
    end
  end
end
