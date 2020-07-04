class Api::V1::CommentsController < ApplicationController
    before_action :find_comment, only: [:show, :update, :destroy]

    def index
        @comments = Comment.all
        render json: @comments
    end

    def show
    end

    def create
        @comment = Comment.create(comment_params)
        render json: @comment
    end

    def update
        @comment.update(comment_params)
        render json: @comment
    end

    def destroy
        @comments = Comment.all
        @comment.destroy
        render json: @comments
    end

    private

    def find_comment
        @comment = Comment.find(params[:id])
    end

    def comment_params
        params.permit(:name, :comment, :animal_tag, :animal_id, :plant_id)
    end
end
