class Api::V1::PlantsController < ApplicationController
  before_action :find_plant, only: [:show, :update, :destroy]

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

    def destroy
        @plants = Plant.all
        @plant.destroy
        render json: @plants
    end

    private

    def find_plant
        @plant = Plant.find(params[:id])
    end

    def plant_params
        params.permit(:species, :size, :predators, :location, :seed_distribution, :other_info, :biome_id, :image)
    end
end
