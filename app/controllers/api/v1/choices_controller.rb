class Api::V1::ChoicesController < ApplicationController

    def index
        @choices = Choice.all
        render json: @choices
    end
end
