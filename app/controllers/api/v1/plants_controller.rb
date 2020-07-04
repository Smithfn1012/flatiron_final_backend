class Api::V1::PlantsController < ApplicationController


    def index
        @plants = Plant.all
        render json: @plants
    end

    def show
    end

    def create
      @plant = Plant.create(plant_params)
      render json: @plant
    end

    def update
        @plant.update(plant_params)
        render json: @plant
    end
end
