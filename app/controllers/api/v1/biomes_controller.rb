class Api::V1::BiomesController < ApplicationController

    def index
        @biomes = Biome.all
        render json: @biomes
    end

    def show
    end

    def create
        @biome = Biome.create(biome_params)
        render json: @biome
    end
end
