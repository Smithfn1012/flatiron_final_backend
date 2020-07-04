class Api::V1::QuestionAnswersController < ApplicationController
    before_action :find_question_answer, only: [:show, :update]
  
    def index
      @question_answers = QuestionAnswer.all
      render json: @question_answers
    end
  
    def show
    end
  
    def create
      @question_answer = QuestionAnswer.create(question_answer_params)
      render json: @question_answer
    end
  
    def update
      @question_answer.update(question_answer_params)
      render json: @question_answer
    end
  
    private
    def find_question_answer
      @question_answer = QuestionAnswer.find(params[:id])
    end
  
    def question_answer_params
      params.permit(:question, :fact, :image)
    end
end