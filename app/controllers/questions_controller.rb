class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(your_message)
  if your_message.downcase == "i am going to work"
    "Great!"
  elsif your_message[-1] != "?"
    "I don't care, get dressed and go to work!"
  else
    "Silly question, get dressed and go to work!"
  end
end

# def coach_answer_enhanced(your_message)
#   if your_message == "i am going to work right now!".upcase
#     ""
#   else
#     "I can feel your motivation! #{coach_answer(your_message)}"
#   end
# end

end
