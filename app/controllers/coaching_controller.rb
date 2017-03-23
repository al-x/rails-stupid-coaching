class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    if @query.upcase == "I am going to work right now!".upcase
      @response = ''
    elsif @query.end_with?'?'
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end

    if @response == ''
      ''
    elsif @query == @query.upcase
      @response = "I can feel your motivation! " + @response
    else
      @response
    end
  end

  def ask
  end
end
