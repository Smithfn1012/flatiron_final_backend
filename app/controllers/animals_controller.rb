class AnimalsController < ApplicationController
    before_action :find_animal, only: [:show, :update, :destroy]

    def index
        @animals = Animal.all
        render json: @animals
    end

    def show
    end

    def create
        @animal = Animal.create(animal_params)
        render json @animal
    end

    def update
        @animal.update(animal_params)
        render json: @animal
    end

    def destroy
        @animals = Animal.all
        @animal.destroy
        render json: @animals
    end

    private

    def find_animal
        @animal = Animal.find(params[:id])
    end

    def animal_params
        params.permit(:species, :lifespan, :size, :prey, :predators, :location, :other_info, :endangered, :biome_id, :image)
    end
end