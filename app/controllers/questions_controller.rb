class QuestionsController < ApplicationController
  def ask
    # @questions = []
  end

  def answer
    @questions = params[:question]
    if @questions == "I am going to work"
      @answers = 'Great ! '
    elsif @questions.end_with?('?')
      @answers = 'Silly question, get dressed and go to work!'
    else
      @answers = " I don't care, get dressed and go to work! "
    end

  end
end

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
