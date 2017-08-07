class CoachingControllerController < ApplicationController
  def ask

  end

  def answer
    @questions = params[:question_type]
    @answers = coach_answer(@questions)
  end

  def coach_answer(your_message)
  if your_message == "I am going to work right now!"
    coach_answer = ""
  elsif your_message.include?('?')
    coach_answer = "Silly question !"
  else
    coach_answer = "I don't care !"
  end
  return coach_answer
end

end
