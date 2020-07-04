class Api::V1::AnimalsController < ApplicationController

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
end
