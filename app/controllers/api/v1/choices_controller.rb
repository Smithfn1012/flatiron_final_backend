class Api::V1::ChoicesController < ApplicationController

    def index
        @choices = Choice.all
        render json: @choices
    end

    def show
    end

    def create
        @choice = Choice.create(choice_params)
        render json: @choice
    end

    private

    def choice_params
        params.permit(:id, :item, :answer, :question_answer_id)
    end
end
